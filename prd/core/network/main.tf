module "vpc" {
  source               = "github.com/joeterlecki/terraform-aws-vpc-standard.git?ref=v1.3.4"
  vpc_cidr_block       = var.vpc_cidr_block
  vpc_name             = var.vpc_name
  environment          = var.environment
  subnet_cidrs         = var.subnet_cidrs
  nat_instance_key     = var.nat_instance_key
  bastion_instance_key = var.bastion_instance_key
}