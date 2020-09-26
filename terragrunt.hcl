generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "us-east-1"
  assume_role {
    role_arn = "arn:aws:iam::134905014910:role/app-terraform-azure-devops-role"
  }
}
EOF
}

remote_state {
  backend = "s3"
  config = {
    encrypt = true
    bucket  = get_env("TERRAFORM_STATE_BUCKET", "")
    key     = "${path_relative_to_include()}/terraform.tfstate"
    region  = "us-east-1"
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}