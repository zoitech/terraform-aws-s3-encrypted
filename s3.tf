resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  region = var.region
  acl    = var.acl


  versioning {
    enabled = var.enable_versioning
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = var.kms_master_key_id
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "aws_s3_bucket_public_access_block" "s3_block_public" {
  bucket = "${aws_s3_bucket.s3_bucket.id}"

  restrict_public_buckets   = var.restrict_public_buckets
  block_public_acls = var.block_public_acls
  block_public_policy = var.block_public_policy
  ignore_public_acls = var.ignore_public_acls
}


