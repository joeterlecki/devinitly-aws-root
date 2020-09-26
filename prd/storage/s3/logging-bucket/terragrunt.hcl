terraform {
  source = "github.com/joeterlecki/terraform-aws-s3-logging-bucket.git"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  bucket_name       = "devinitly-root-logging"
  versioning_status = "false"
  environment       = "prd"
  tags              = {Project = "portfolio", Department = "Cloud Engineering"}
}

