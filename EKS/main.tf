provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "master" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = 1

  tags = {
    Name = "master"
  }
}

resource "aws_instance" "node" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  count         = 1

  tags = {
    Name = "node"
  }
}
