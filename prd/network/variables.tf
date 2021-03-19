variable "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  type        = string
  default     = ""
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = ""
}

variable "environment" {
  description = "The defining environment of the Account: DEV, TST, STG, PRD, ROOT"
  type        = string
  default     = null
}

variable "tags" {
  type    = map(string)
  default = {}
}

variable "subnet_cidrs" {
  type    = map(any)
  default = {}
}

variable "nat_instance_key" {
  type        = string
  description = "The desired key pair name for the nat instance"
  default     = null
}

variable "bastion_instance_key" {
  type        = string
  description = "The desired key pair name for the bastion instance"
  default     = null
}

locals {
  tags = merge(
    var.tags,
    {
      Environment  = var.environment
      VPC          = var.vpc_name
      Provisioning = "terraform"
    },
  )
}