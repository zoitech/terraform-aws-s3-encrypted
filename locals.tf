locals {
  bucket_tags = merge({ Name = var.bucket_name }, var.bucket_tags)

  server_side_encryption_configuration = var.kms_master_key_id == "" ? {} : {
    rule = {
        apply_server_side_encryption_by_default = {
            sse_algorithm = "aws:kms"
            kms_master_key_id = var.kms_master_key_id
            }
        }
    }

}
