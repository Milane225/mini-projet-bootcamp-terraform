#General parameters
variable "put_availibility_zone" {
  type        = string
  description = "Put the evailibility zone"
  default     = "NULL"
}

variable "put_provider_region" {
  type        = string
  description = "Put the provier region"
  default     = "NULL"
}


#EC2 parameters
variable "put_instance_type" {
  type        = string
  description = "Put the instance type"
  default     = "NULL"
}

variable "put_key_name" {
  type        = string
  description = "Put the key name"
  default     = "NULL"
}

variable "put_ec2_tags" {
  type        = string
  description = "Put the ec2 tag"
  default     = "NULL"
}

variable "put_ssh_user" {
  type        = string
  description = "Put the ssh user"
  default     = "NULL"
}

variable "put_ec2_key_path" {
  type = string
  description = "Put ssh key path"
  default = "NULL"
}


#Security groups parameters
variable "put_sg_name" {
  type        = string
  description = "Put the sg name"
  default     = "NULL"
}

#EBS parameters
variable "put_ebs_disk_size" {
  type        = number
  description = "Put disk size"
  default     = 0
}

variable "put_ebs_tags" {
  type        = string
  description = "Put the ebs tag"
  default     = "NULL"
}
