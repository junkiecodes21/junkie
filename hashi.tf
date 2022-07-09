terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.22.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  key_name = "herosh"
  security_groups = ["securitytroop"]
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_tls" {
  name        = "securitytroop"
  description = "codesecuritygr"
  vpc_id      = "vpc-029c8a96a479f337e"

  ingress {
    description      = "codesecuritygr"
    from_port        = "22"
    to_port          = "22"
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}