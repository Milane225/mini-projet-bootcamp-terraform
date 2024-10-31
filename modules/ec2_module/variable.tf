variable "my_instance_type" {
  type = string
  description = "instance type"
  default = "NULL"
}

variable "my_key_name" {
  type = string
  description = "Name of maintenair"
  default = "NULL"
}

variable "my_instance_tag" {
  type = string
  description = "My instance tag"
  default = "NULL"
}

variable "my_ssh_user" {
  type = string
  description = "My ssh user"
  default = "NULL"
}

variable "my_ec2_key_path" {
  type = string
  description = "My ec2 key path"
  default = "NULL"
}

variable "my_availability_zone" {
  type = string
  description = "Availibility zone"
  default = "NULL"
}

variable "my_sg_name" {
  type = string
  description = "My security group"
  default = "NULL"
}

variable "my_public_ip" {
  type = string
  description = "My public ip"
  default = "NULL"
}