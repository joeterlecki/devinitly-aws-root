terraform {
  backend "s3" {
    bucket  = "134905014910-tfstate"
    key     = "prd/core/logging/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}