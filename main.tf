terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name        = "terraform-vpc-${terraform.workspace}"
    Environment = terraform.workspace
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet_cidr

  tags = {
    Name        = "terraform-subnet-${terraform.workspace}"
    Environment = terraform.workspace
  }
}

resource "aws_instance" "server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.main.id

  tags = {
    Name        = "terraform-server-${terraform.workspace}"
    Environment = terraform.workspace
  }
}