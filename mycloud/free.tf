provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_vpc" "AnxietySandbox2019VPC-VPC" {
  cidr_block = "10.42.0.0/16"
}

resource "aws_instance" "stats" {
  ami           = "ami-0a313d6098716f372"
  instance_type = "t2.micro"
}

