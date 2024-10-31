output "output_my_ec2_id" {
  value = aws_instance.myec2-mini-projet-terraform.id
}

output "output_my_ec2_evailibility_zone" {
  value = aws_instance.myec2-mini-projet-terraform.availability_zone
}