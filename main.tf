module "tools" {
  for_each = var.tools
  source = "./module/app"
  tool_name = each.key
  instance_type = each.value["instance_type"]
  policy_request_list  = each.value
  aws_ami = "ami-090252cbe067a9e58"
  zone_id = var.zone_id

}