provider "aws" {
  region     = "us-east-1"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_instance" "myec2" {
    ami = "ami-08a6efd148b1f7504"
    instance_type = "t3.micro"

    tags={
        Name= "my-first-ec2"
    }
  
}


# Checkout the below commands and documentation for creating the instances from terraform

# Documentation Referred:
# https://registry.terraform.io/

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs

# Commands:
# terraform init
# terraform plan
# terraform apply