variable "profile" {
  type    = string
  default = null
}

variable "assume_role_arn" {
  type    = string
  default = ""
}

variable "regiao" {}
variable "projeto" {}
variable "ambiente" {}
variable "criado_por" {}
variable "ami" {}
variable "instance_type" {}
variable "keypair_name" {}
variable "vpc_id" {}
variable "subnet_id" {}
variable "sg_id" {}
variable "associate_public_ip" {
  type    = any
  default = false
}
variable "instance_name" {
  type    = any
  default = "tpl_instance"
}
variable "user_data" {
  type    = any
  default = null
}
variable "instance_profile_name" {
  type    = string
  default = null
}

variable "automacao" {
  type    = any
  default = "enabled"
}

variable "root_block_device_size" {
  type    = any
  default = 10
}

variable "root_block_device_type" {
  type    = any
  default = "gp2"
}

variable "disable_api_termination" {
  type    = any
  default = false
}