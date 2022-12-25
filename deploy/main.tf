# Configuration 

terraform {
  required_version = ">= 0.12"
  backend "s3" {
    bucket = "recipe-app-api-tfstate-aj"
    key = "recipe-app.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "recipe-app-api-tfstate-lock"
  }
}

provider "aws" {
    region = "us-east-1"
    version = "~>2.54.0"
}

