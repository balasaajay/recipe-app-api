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