provider "aws" {
  access_key = "AKIAIG3LMOU64ZTCV6HA"
  secret_key = "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"
  region     = "us-east-1a"
}

resource "aws_instance" "webserv1" {
  ami           = "ami-0cf4275f089445589"
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags {
    Name = "austins-webserver"
  }
}

resource "aws_security_group" "instance" {
  name = "austinswebserverinstance"

  ingress {
    from_port = 8080
    protocol = "tcp"
    to_port = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }
}