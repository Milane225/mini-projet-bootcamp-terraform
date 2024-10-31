resource "aws_eip" "my_eip" {
  domain   = "vpc"

  provisioner "local-exec" {
    command = "echo PUBLIC IP: ${aws_eip.my_eip.public_ip} > ip_ec2.txt"
  }
}