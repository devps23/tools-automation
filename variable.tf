variable "tools"{
  default = {
//    prometheus = {
//      instance_type="t3.micro"
//      policy_request_list = ["ec2:DescribeInstances"]
//    }
//    grafana = {
//      instance_type="t3.micro"
//      policy_request_list = []
//    }
//    vault = {
//      instance_type="t3.micro"
//      policy_request_list = []
//    }
//    elk-search = {
//      instance_type="t3.large"
//      policy_request_list = []
//    }
    sonarqube_cl = {
      instance_type="t3.micro"
      policy_request_list = []
    }
  }

}
variable "zone_id" {
  default = "Z09583601MY3QCL7AJKBT"
}