terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.40.0"
    }
  }
   backend "s3" {
    bucket = "s3-native-locking222"
    key    = "remote-state-s3nativelocking2"
    region = "ap-south-1"
    encrypt        = true
    use_lockfile = true
   
   }
}

provider "aws" {
  # Configuration options
}