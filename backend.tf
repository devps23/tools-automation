terraform {
  backend "s3" {
    bucket = "bucketinfo23"
    key    = "test/qa/file"
    region = "us-east-1"
  }
}
resource "null_resource" "resource" {}