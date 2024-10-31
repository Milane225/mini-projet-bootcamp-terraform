provider "aws" {
  region                   = var.put_provider_region
  shared_credentials_files = ["../../cles-bootcamp-terraform/aws_acces_key"]
}

#Import sg module
module "import_sg_module" {
  source     = "../modules/sg_module"
  my_sg_name = var.put_sg_name
}

#Import ebs module
module "import_ebs_module" {
  source               = "../modules/ebs_module"
  my_availability_zone = var.put_availibility_zone
  my_disk_size         = var.put_ebs_disk_size
  my_ebs_tag           = var.put_ebs_tags
}

#Import eip module
module "import_eip_module" {
  source = "../modules/eip_module"
}

#Import ec2 module
module "import_ec2_module" {
  source               = "../modules/ec2_module"
  my_instance_type     = var.put_instance_type
  my_key_name          = var.put_key_name
  my_availability_zone = var.put_availibility_zone
  my_instance_tag      = var.put_ec2_tags
  my_sg_name           = module.import_sg_module.output_my_sg_name
  my_ssh_user          = var.put_ssh_user
  my_ec2_key_path      = file("../../cles-bootcamp-terraform/devops-lamine.pem")
}

#Associate eip to ec2
resource "aws_eip_association" "eip_ressource" {
  instance_id   = module.import_ec2_module.output_my_ec2_id
  allocation_id = module.import_eip_module.output_my_eip_id
}

#Attachment ebs to ec2
resource "aws_volume_attachment" "ebs_volume" {
  device_name = "/dev/sdh"
  volume_id   = module.import_ebs_module.output_my_ebs_id
  instance_id = module.import_ec2_module.output_my_ec2_id
}