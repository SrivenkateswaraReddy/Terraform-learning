# we are currently maintaining separate files for providers
# adding terraform-workspaces.
# this can help us in managing the different types of workspace environment such as dev and prod.
terraform {
  cloud{
    organization = "getting-started-terraform-learning"
    #hostname     = "app.terraform.io"
    workspaces {
      name = "terraform-learning-example"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
}

locals {
  project_name = "Vicky"
}