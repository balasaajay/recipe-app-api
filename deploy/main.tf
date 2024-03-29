# Configuration 

terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket         = "recipe-app-api-tfstate-aj"
    key            = "recipe-app.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "recipe-app-api-tfstate-lock"
  }
}

provider "aws" {
  region  = "us-east-1"
  version = "~>2.54.0"
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}" # Interpolation syntax
  common_tags = {
    Environment = terraform.workspace
    Project     = var.project
    owner       = var.contact
    ManagedBy   = "Terraform"
  }
}

data "aws_region" "current" {} # gives a resource to use current region