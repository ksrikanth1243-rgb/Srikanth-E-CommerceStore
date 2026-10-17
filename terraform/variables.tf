variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "instance_type" {
  type    = string
  default = "t3.small"
}

variable "vpc_cidr" {
  type    = string
  default = "10.20.0.0/16"
}

variable "public_subnet_cidr" {
  type    = string
  default = "10.20.1.0/24"
}

variable "dockerhub_username" {
  type = string
}

variable "image_tag" {
  type    = string
  default = "v1.0"
}

variable "jwt_secret" {
  type      = string
  sensitive = true
}
