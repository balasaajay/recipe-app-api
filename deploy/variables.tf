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

variable "ecr_image_api" {
  description = "ECR Image for API"
  default     = "831876455483.dkr.ecr.us-east-1.amazonaws.com/recipe-app-api:latest"
}

variable "ecr_image_proxy" {
  description = "ECR Image for Proxy"
  default     = "831876455483.dkr.ecr.us-east-1.amazonaws.com/recipe-app-api-proxy:dev"
}

variable "django_secret_key" {
  description = "Secret Key for Django app"
}
