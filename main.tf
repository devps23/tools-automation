module "tools" {
  for_each = var.tools
  source = "./module/app"
  tool_name = each.key
  instance_type = each.value["instance_type"]
  iam_policy_list  = each.value["policy_request_list"]
  aws_ami = "ami-090252cbe067a9e58"
  zone_id = var.zone_id

}