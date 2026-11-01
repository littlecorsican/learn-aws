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


# 1. Create an RDS PostgreSQL Database
resource "aws_db_instance" "my_learning_db" {
  allocated_storage   = 20
  engine              = "postgres"
  engine_version      = "15"
  instance_class      = "db.t4g.micro"             # Low-cost/Free tier eligible instance type
  db_name             = "mydb"
  username            = "dbuser"
  password            = "SuperSecretPassword123!" # In real projects, use variables, not plaintext!
  skip_final_snapshot = true                       # Prevents Terraform from hanging/failing during 'destroy'
}
