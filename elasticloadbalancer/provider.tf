terraform {
  backend "s3" {
    bucket                  = "sl-infracode-bucket-state"
    key                     = "elb-project"
    region                  = "us-east-1"
    shared_credentials_file = "~/.aws/credentials"
  }
}


terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.61.0"
    }
  }
}

# Configure AWS provider:

provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  version                 = "3.61.0"
}