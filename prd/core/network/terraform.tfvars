vpc_cidr_block = "10.0.0.0/20"
vpc_name       = "main-standard"
environment    = "prd"
subnet_cidrs = {
  "public_cidr_1"  = "10.0.1.0/24"
  "public_cidr_2"  = "10.0.3.0/24"
  "public_cidr_3"  = "10.0.5.0/24"
  "private_cidr_1" = "10.0.2.0/24"
  "private_cidr_2" = "10.0.4.0/24"
  "private_cidr_3" = "10.0.6.0/24"
}
nat_instance_key     = "nat-key"
bastion_instance_key = "bastion-key"