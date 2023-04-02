

locals {
  name = "terraform-simple-class"
}


# we are adding the type of resource we wanted to add .
# we are adding the ami id to verify the resource and instance_type to identify instance type.
# we are adding the tags to identify and use the local resources.
resource "aws_instance" "myserver" {
  ami           = "ami-00c39f71452c08778"
  instance_type = var.instance_type
  tags = {
    Name = "MyServer-${local.name}"
  }
}
/*
# we are adding the module vpc to from the hashicorp modules of vpc.
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  providers = {
    aws = aws.us
  }

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
*/


