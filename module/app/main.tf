resource "aws_instance" "resource" {
  ami = data.aws_ami.ami.image_id
  instance_type = var.instance_type
 // iam_instance_profile = aws_iam_instance_profile.instance_profile.name
  instance_market_options {
    market_type = "spot"
    spot_options {
      instance_interruption_behavior = "stop"
      spot_instance_type             = "persistent"
    }
  }
  tags = {
    Name = var.tool_name
  }

}
//resource "aws_route53_record" "record_internal" {
//  name = "${var.tool_name}-internal"
//  type = "A"
//  zone_id = var.zone_id
//  records = [aws_instance.resource.private_ip]
//  ttl = 30
//}
//resource "aws_route53_record" "record" {
//  name = "${var.tool_name}-public"
//  type = "A"
//  zone_id = var.zone_id
//  records = [aws_instance.resource.public_ip]
//  ttl = 30
//}
//resource "aws_iam_role" "role" {
//  name               = "${var.tool_name}-role"
//  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy.json
//}
//
//resource "aws_iam_instance_profile" "instance_profile" {
//  name = "${var.tool_name}-instance"
//  role = aws_iam_role.role.name
//}
//resource "aws_iam_policy" "policy" {
//  name        = "${var.tool_name}-policy"
//   description = "My test policy"
//  policy = jsonencode({
//    Version = "2012-10-17"
//    Statement = [
//      {
//        Action = concat(var.describe_instance_type,var.policy_request_list)
//
//        Effect   = "Allow"
//        Resource = "*"
//      },
//    ]
//  })
//}
//resource "aws_iam_role_policy_attachment" "policy-attach" {
//  role       = aws_iam_role.role.name
//  policy_arn = aws_iam_policy.policy.arn
//}