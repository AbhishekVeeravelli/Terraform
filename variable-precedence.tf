resource "aws_instance" "myec2" {
  ami = "ami-0de716d6197524dd9"
  instance_type = var.instance_type
}
