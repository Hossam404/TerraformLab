variable "region" {
type = string
default = "us-east-1"  
}

variable "cidr_block" {
type = string
default = "10.0.0.0/16"
    
}

variable "public_subnet_cidr" {
  type = string
  description = "cidr range of public subnet"
}

variable "private_subnet_cidr" {
  type = string
  description = "cidr range of private subnet"
}

variable "ami_id" {

  # = "ami-0fff1b9a61dec8a5f"
  type = string
  description = "ami id for ec2 amazon linux"
  
}

variable "instance_type" {

  type = string
  description = "es2 instance type"
  
}





