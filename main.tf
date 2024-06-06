module "tools" {
  for_each = var.tools
  source = "./module/app"
  tool_name = each.key
  instance_type = each.value["instance_type"]
  policy_request_list  = each.value["policy_request_list"]
  zone_id = var.zone_id

}