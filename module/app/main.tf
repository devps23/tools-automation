resource "aws_instance" "resource" {
  ami = var.aws_ami
  instance_type = var.instance_type
  tags = {
    Name = var.tool_name
  }
}
resource "aws_route53_record" "records" {
  name = "${var.tool_name}-role"
  type = "A"
  zone_id = var.zone_id
  records = [aws_instance.resource.private_ip]
}
resource "aws_iam_role" "instance" {
  name               = "instance_role"
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json
}

