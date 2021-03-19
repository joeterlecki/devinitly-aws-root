data "aws_caller_identity" "current" {}

module "logging_bucket" {
  source            = "git::https://github.com/terraform-aws-iac/terraform-aws-s3-bucket-aes.git?ref=v1.5.0"
  bucket_name       = "${data.aws_caller_identity.current.account_id}-${var.bucket_name}"
  versioning_status = var.versioning_status
  environment       = var.environment
  canned_acl        = var.canned_acl
  tags              = var.tags
}