provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "stats" {
  ami           = "ami-0a313d6098716f372"
  instance_type = "t2.micro"
}

