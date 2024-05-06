resource "aws_instance" "resource" {
  ami = var.aws_ami
  instance_type = var.instance_type
  tags = {
    Name = var.name
  }
}