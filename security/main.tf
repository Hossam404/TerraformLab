resource "aws_security_group" "public" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id
  ingress {

    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    

  }
  egress {

    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    

  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "private" {
  name        = "allow ssh2"
  description = "Allow ssh inbound traffic and all outbound traffic2"
  vpc_id      = var.vpc_id
  ingress {

    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    

  }

  ingress {

    from_port = 3000
    to_port = 3000
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    

  }

  egress {

    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    

  }

  tags = {
    Name = "allow_ssh2"
  }
}

