locals {
  bucket_tags = merge({ Name = var.bucket_name }, var.bucket_tags)
}
