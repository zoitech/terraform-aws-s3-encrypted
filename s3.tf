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
