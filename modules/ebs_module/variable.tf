variable "my_disk_size" {
  type = number
  description = "The disk size"
  default = 10
}

variable "my_availability_zone" {
  type = string
  description = "Availibility zone"
  default = "NULL"
}

variable "my_ebs_tag" {
  type = string
  description = "ebs volume tag"
  default = "NULL"
}