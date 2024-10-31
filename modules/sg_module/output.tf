output "output_my_sg_id" {
  value = aws_security_group.allow_ssh_http_https.id
}

output "output_my_sg_name" {
  value = aws_security_group.allow_ssh_http_https.name
}

