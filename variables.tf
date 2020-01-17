variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = ""
}

variable "region" {
  description = "Region for the S3 bucket"
  default     = "eu-central-1"
}

variable "acl" {
  description = "The canned ACL to use on the bucket"
  default     = "private"
}

variable "enable_versioning" {
  description = "To enable object versioning"
  default     = true
}

variable "kms_master_key_id" {
  description = "KMS Key identifier which can be one of the following formats: key ID, key ARN, alias name or alias ARN"
  default     = ""
}



