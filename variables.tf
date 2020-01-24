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
variable "block_public_acls" {
  description = "(Optional) Whether Amazon S3 should block public ACLs for this bucket."
  default = true
  
}

variable "block_public_policy" {
  description = "(Optional) Whether Amazon S3 should block public bucket policies for this bucket."
  default = true
  
}

variable "restrict_public_buckets" {
  description = "(Optional) Whether Amazon S3 should restrict public bucket policies for this bucket"
  default = true
  
}

variable "ignore_public_acls" {
  description = "(Optional) Whether Amazon S3 should ignore public ACLs for this bucket."
  default = true
  
}

variable "block_bucket_public_access" {
  description = "Set block public access variables  "
  default = true
  
}
