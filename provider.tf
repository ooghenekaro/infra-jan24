
terraform {
  backend "s3" {
    bucket = "karo-terraform-state"
    key    = "global/s3/terraform.tfstate"
    region = "eu-west-2"
    dynamo_table = "terraform-state"
    encrypt = true
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "eu-west-2"
}
