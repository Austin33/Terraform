provider "aws" {
  access_key = "AKIAIG3LMOU64ZTCV6HA"
  secret_key = "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"
  region     = "us-east-1a"
}

resource "aws_instance" "webserv1" {
  ami           = "ami-0cf4275f089445589"
  instance_type = "t2.micro"
}  