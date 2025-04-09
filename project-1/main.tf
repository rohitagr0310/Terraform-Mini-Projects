# Question: Create a Terraform configuration file that does the following:
# 1. use required_providers block to specify the provider
# 2. use provider block to specify the region
# 3. use resource block to create an example t2.micro EC2 instance

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  tags = {
    Name = "example-instance"
  }
}
