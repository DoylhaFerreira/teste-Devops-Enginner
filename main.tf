provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "nginx" {
  ami           = "i-0d33dfbc6b2050363"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["${aws_security_group.nginx.id}"]
  key_name = "my-key-pair"
  user_data = <<-EOF
              #!/bin/bash
              sudo apt-get update
              sudo apt-get install -y nginx
              EOF
}

resource "aws_security_group" "nginx" {
  name        = "nginx"
  description = "Allow SSH and HTTP access"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["15.228.186.239"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
