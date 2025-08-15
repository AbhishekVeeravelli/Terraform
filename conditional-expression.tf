variable "environment" {
  default = "development"
}

variable "region" {
  default = "us-east-1"
}

resource "aws_instance" "myec2"{
  ami = "ami-0de716d6197524dd9"
  instance_type = var.environment=="development" && var.region == "us-east-1"? "t3.micro":"t2.micro"
}
