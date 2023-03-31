terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  # Oregon
  region = "us-west-2"
}

/*terraform {
  backend "s3" {
    bucket = "backend-terraform-state"
    key    = "terraform.tfstate"
    region = "us-west-2" # Oregon
    # region = "us-east-1" # Northern Virginia
  }
}*/