## 2.0.0

ENHANCEMENTS:
* Upgraded terraform version to 0.13  [#8](https://github.com/zoitech/terraform-aws-s3-encrypted/issues/8)

BACKWARDS INCOMPATIBILITIES / NOTES:
* Works with terraform 0.13.x


## 1.1.2

NEW FEATURES:

* Bucket encryption can now be enabled/disabled depending on whether the variable "kms_master_key_id" is set

## 1.0.2

NEW FEATURES:

* Bucket tagging ([#3](https://github.com/zoitech/terraform-aws-s3-encrypted/issues/3))

## 1.0.1

NEW FEATURES:

* Block public access for bucket

## 1.0.0

NEW FEATURES:

* Bucket encryption
* Versioning
* Canned ACL

BACKWARDS INCOMPATIBILITIES / NOTES:

* Works with terraform 0.12.x