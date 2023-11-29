output "public-ip-address" {
  value = aws_instance.example.public_ip
}

output "subnet_id" {
  value = aws_instance.example.subnet_id
}

output "security_groups" {
  value = aws_instance.example.security_groups
}