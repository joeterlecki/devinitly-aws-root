# terraform {
#   backend "s3" {
#     bucket  = "134905014910-tfstate"
#     key     = "prd/core/network/terraform.tfstate"
#     region  = "us-east-1"
#     encrypt = true
#   }
# }

terraform {
  backend "remote" {
    organization = "Devinitly"

    workspaces {
      name = "root-network-prd"
    }
  }
}
