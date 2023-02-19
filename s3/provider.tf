terraform {
  backend "s3" {
    bucket = "aimhighergg-tfstate"
    region = "ap-northeast-1"
    key = "s3-tfstate-bucket.tfstate"
    encrypt = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "ap-northeast-1"
}