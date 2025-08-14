resource "aws_instance" "myec2" {
  ami           = "ami-0de716d6197524dd9" 
  instance_type = "t3.micro"
  count        = 2

  tags = {
    Name = "MyEC2Instance-${count.index}"
  }
}

resource "aws_iam_user" "this" {  
  name = "my-iam-user-${count.index}"
  count=3  
}

variable "users" {
  type=list
  default=["Alice","Bob","John"]
}

resource "aws_iam_user" "that" {  
  name = var.users[count.index]
  count=3  
}