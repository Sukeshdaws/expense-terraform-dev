terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.97.0"
    }
  }
  backend "s3" {
    bucket = "sukeshdaws-remote-state" #after creating s3 bucket just copy paste the bucket name
    key    = "expense-dev-sg"  #any name can be given
    region = "us-east-1"
    dynamodb_table = "sukeshdaws-locking" #remote state using s3 and locking state using dynamodb
  }
}

provider "aws" {
    region = "us-east-1"
}