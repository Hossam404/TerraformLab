output "bastion" {

value = aws_instance.bastion.id
  
}

output "APP" {
    value = aws_instance.APP.id
  
}

