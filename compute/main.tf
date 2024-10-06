resource "aws_instance" "bastion" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = [var.public_SG]
  subnet_id = var.public-subnet

  
  tags = {
    Name = "Bastion EC2"
  }
}

resource "aws_instance" "APP" {
  ami = var.ami_id
  instance_type = var.instance_type
  security_groups = [var.private_SG]
  subnet_id = var.private-subnet


  
  tags = {
    Name = "APP EC2"
  }
}