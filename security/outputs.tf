output "public" {

value = aws_security_group.public.id


}

output "private" {
  
value = aws_security_group.private.id

}