terraform {
  backend "s3" {
    bucket  = "tf-state-root-devinitly"
    key     = "prd/network/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
