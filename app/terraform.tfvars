#Overload general parameters
put_provider_region   = "us-east-1"
put_availibility_zone = "us-east-1b"

#EC2 parameters
put_instance_type = "a1.medium"
put_key_name      = "devops-lamine"
put_ec2_tags      = "lamine-ec2"
put_ssh_user      = "ubuntu"
#put_ec2_key_path= file("../../cles-bootcamp-terraform/devops-lamine.pem")

#Overload security groups parameters
put_sg_name = "lamine-sg"

#Overload EBS parameters
put_ebs_disk_size = 7
put_ebs_tags      = "lamine-ebs"