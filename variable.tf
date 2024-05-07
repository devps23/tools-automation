variable "tools"{
  default = {
    prometheus = {
      instance_type="t3.micro"
      policy_request_list = "ec2:DescribeInstances"
    }
  }

}
variable "zone_id" {
  default = "Z09583601MY3QCL7AJKBT"
}