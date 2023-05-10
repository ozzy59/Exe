variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "key_name" {
  type    = string
  default = "local_key"
}

variable "ami_id" {
  type    = string
  default = "ami-0b7fd829e7758b06d"
}

variable "instance_name" {
  type    = string
  default = "web-server"
}

variable "sg_ssh_name" {
  type    = string
  default = "ssh"
}