resource "aws_instance" "myec2" {
  ami = var.instance_type
  instance_type = "t3.micro"
}
