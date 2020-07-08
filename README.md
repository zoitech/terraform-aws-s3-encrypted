# terraform-aws-s3-encrypted

Terrafor module for creating encrypted S3 buckets in AWS

# Description

This module creates the following resources:

* S3 buckets

Features:

* Optional full bucket encryption
* Canned ACL
* Optional versioning
* Restrict public access
* Tagging

## Usage Example

```hcl
module "my_bucket" {
  providers = {
    "aws" = "aws.module"
  }
  source            = "git::https://github.com/zoitech/terraform-aws-s3-encrypted.git?ref=1.1.2"
  bucket_name       = "my-bucket"
  region            = "eu-central-1"
  kms_master_key_id = "arn:aws:kms:us-central-1:111122223333:alias/my-key"
  acl               = "private"
  enable_versioning = true
  block_public_acls         = true
  ignore_public_acls        = true
  block_public_policy       = true
  restrict_public_buckets   = true
  bucket_tags = {
    creation      = "terraform"
    project       = "my-project"
  }
}
```