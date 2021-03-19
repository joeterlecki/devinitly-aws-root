terraform {
  backend "s3" {
    bucket  = "tf-state-root-devinitly"
    key     = "prd/core/network/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
