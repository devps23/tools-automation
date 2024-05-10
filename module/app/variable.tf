variable "instance_type" {}
variable "tool_name"{}
variable "aws_ami" {}
variable "zone_id" {}
variable "policy_request_list" {}
variable "describe_instance_type"{
  default = "DescribeInstanceTypes"
}