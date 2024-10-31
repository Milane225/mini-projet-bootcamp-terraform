data "aws_ami" "app_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-*"]
  }
}

resource "aws_instance" "myec2-mini-projet-terraform" {
  ami             = data.aws_ami.app_ami.id
  instance_type   = var.my_instance_type
  key_name        = var.my_key_name
  availability_zone= var.my_availability_zone
  security_groups = ["${var.my_sg_name}"]
  tags = {
    Name = var.my_instance_tag
  }

   provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx",
    ]

    connection {
      type        = "ssh"
      user        = var.my_ssh_user
      private_key = var.my_ec2_key_path
      host        = self.public_ip
    }
  }

  root_block_device {
    delete_on_termination = true
  }

}