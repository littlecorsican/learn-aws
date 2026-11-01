terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider (adjust your region as needed)
provider "aws" {
  region = "ap-southeast-1"
}

# 1. Create an S3 Bucket
resource "aws_s3_bucket" "my_learning_bucket" {
  bucket        = "my-unique-learning-bucket-2026" # S3 buckets must have a globally unique name
  force_destroy = true                             # Allows Terraform to delete the bucket even if it has files inside
}
