provider "aws" {
  #profile = "default"
  region  = "us-east-1"
  alias   = "us"
}
# we are currently maintaining separate files for providers
# adding provider an alias name to identify the provider
# in our case the provider is aws and region is us-east-1 and alias is us.

# we are adding multiple providers to the the same file if needed we can swithc between different regions.
# in our second case the region is us-west-1 and alias is eu.
provider "aws" {
 # profile = "default"
  region  = "eu-west-1"
  alias   = "eu"
}