variable "instance_type" {}
variable "tool_name"{}
variable "zone_id" {}
variable "policy_request_list" {}
variable "describe_instance_type"{
  default = ["ec2:DescribeInstanceTypes"]
}