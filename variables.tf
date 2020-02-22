variable "region" {
  default = "ap-southeast-1"
}

variable "key_name" {
  default = "terraform-testing"
}

variable "key_public_path" {
  default = "~/.ssh/terraform.pub"
}

variable "key_private_path" {
  default = "~/.ssh/terraform"
}

variable "ami" {
  default = "ami-0eaf9544b98b1180c"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "user" {
  default = "ec2-user"
}