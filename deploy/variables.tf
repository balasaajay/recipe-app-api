variable "prefix" {
  type        = string
  default     = "raa"
  description = "RAA - Recipe app API"
}

variable "project" {
  default = "recipe-app-api"
}

variable "contact" {
  default = "ajay.gradapplicant@gmail.com"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "db_username" {
  description = "Username for the RDS postgres instance"
}

variable "db_password" {
  description = "Password for the RDS postgres instance"
}

variable "bastion_key_name" {
  default = "recipe-app-api-bastion"
}