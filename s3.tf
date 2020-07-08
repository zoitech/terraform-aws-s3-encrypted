resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  region = var.region
  acl    = var.acl

  # versioning
  versioning {
    enabled = var.enable_versioning
  }

  # only 1 block of server_side_encryption_configuration is permitted
  dynamic "server_side_encryption_configuration" {
    for_each = var.kms_master_key_id == "" ? [] : [local.server_side_encryption_configuration]

    content {

      dynamic "rule" {
        for_each = length(keys(lookup(local.server_side_encryption_configuration, "rule", null))) == 0 ? [] : [lookup(local.server_side_encryption_configuration, "rule")]

        content {

          dynamic "apply_server_side_encryption_by_default" {
            for_each = length(keys(lookup(rule.value, "apply_server_side_encryption_by_default", {}))) == 0 ? [] : [
            lookup(rule.value, "apply_server_side_encryption_by_default", {})]

            content {
              sse_algorithm     = apply_server_side_encryption_by_default.value.sse_algorithm
              kms_master_key_id = lookup(apply_server_side_encryption_by_default.value, "kms_master_key_id", null)
            }
          }
        }
      }
    }
  }

  # tags
  tags = local.bucket_tags
}

resource "aws_s3_bucket_public_access_block" "s3_block_public" {
  bucket                  = aws_s3_bucket.s3_bucket.id
  block_public_acls       = var.block_public_acls
  ignore_public_acls      = var.ignore_public_acls
  block_public_policy     = var.block_public_policy
  restrict_public_buckets = var.restrict_public_buckets

}


