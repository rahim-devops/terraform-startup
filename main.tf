terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}

# Create an EC2 instance
resource "aws_instance" "hello_ec2" {
  ami           = "ami-06b21ccaeff8cd686"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
