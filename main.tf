terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-06878d265978313ca"
  instance_type = "t2.micro"
  key_name = "matheus-useast1"
  tags = {
    Name = "terraform-ansible-python"
  }
}