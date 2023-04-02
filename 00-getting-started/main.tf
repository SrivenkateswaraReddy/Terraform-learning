terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

variable "instance_type" {
  type = string
}
# declaring local variable  A set of related value can be declared together in a single
# locals block

locals {
  name = "terraform-simple-class"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}
resource "aws_instance" "myserver" {
  ami           = "ami-00c39f71452c08778"
  instance_type = var.instance_type
  tags = {
    Name = "MyServer-${local.name}"
  }
}

#module "vpc" {
#  source = "terraform-aws-modules/vpc/aws"
#
#  name = "my-vpc"
#  cidr = "10.0.0.0/16"
#
#  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
#  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
#
#  enable_nat_gateway = true
#  enable_vpn_gateway = true
#
#  tags = {
#    Terraform   = "true"
#    Environment = "dev"
#  }
#}


#output "instance_ip_addr" {
#  value = aws_instance.myserver.private_ip
#}

output "public_ip_addr" {
  value = aws_instance.myserver.private_ip
}

