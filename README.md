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
```## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.s3_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_public_access_block.s3_block_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_acl"></a> [acl](#input\_acl) | The canned ACL to use on the bucket | `string` | `"private"` | no |
| <a name="input_block_public_acls"></a> [block\_public\_acls](#input\_block\_public\_acls) | (Optional) Whether Amazon S3 should block public ACLs for this bucket. | `bool` | `true` | no |
| <a name="input_block_public_policy"></a> [block\_public\_policy](#input\_block\_public\_policy) | (Optional) Whether Amazon S3 should block public bucket policies for this bucket. | `bool` | `true` | no |
| <a name="input_bucket_name"></a> [bucket\_name](#input\_bucket\_name) | Name of the S3 bucket | `string` | `""` | no |
| <a name="input_bucket_tags"></a> [bucket\_tags](#input\_bucket\_tags) | Tags for the bucket | `map` | `{}` | no |
| <a name="input_enable_versioning"></a> [enable\_versioning](#input\_enable\_versioning) | To enable object versioning | `bool` | `true` | no |
| <a name="input_ignore_public_acls"></a> [ignore\_public\_acls](#input\_ignore\_public\_acls) | (Optional) Whether Amazon S3 should ignore public ACLs for this bucket. | `bool` | `true` | no |
| <a name="input_kms_master_key_id"></a> [kms\_master\_key\_id](#input\_kms\_master\_key\_id) | KMS Key identifier which can be one of the following formats: key ID, key ARN, alias name or alias ARN | `string` | `""` | no |
| <a name="input_region"></a> [region](#input\_region) | Region for the S3 bucket | `string` | `"eu-central-1"` | no |
| <a name="input_restrict_public_buckets"></a> [restrict\_public\_buckets](#input\_restrict\_public\_buckets) | (Optional) Whether Amazon S3 should restrict public bucket policies for this bucket | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | n/a |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | n/a |
