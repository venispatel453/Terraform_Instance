output "private_sg_id" {
  value = aws_security_group.private.id
  description = "private security group id"
}

output "public_sg_id" {
  value = aws_security_group.public.id
  description = "public security group id"
}

output "private_instance_id" {
  value = aws_instance.private[*].id
  description = "private instance id"
}

output "public_instance_id" {
  value = aws_instance.public[*].id
  description = "Public instance id"
}

output "public_instance_IP_address" {
  value = aws_instance.public[*].public_ip
  description = "Private EC2 instance"
}