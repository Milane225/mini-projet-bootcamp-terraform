
resource "aws_ebs_volume" "my_ebs" {
  availability_zone = var.my_availability_zone
  size              = var.my_disk_size
  tags = {
    Name = var.my_ebs_tag
  }  
}