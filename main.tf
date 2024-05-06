module "prometheus" {
  for_each = var.tools
  source = "./module/app"
  name = each.key
  instance_type = each.value["instance_type"]
  aws_ami = "ami-090252cbe067a9e58"
}