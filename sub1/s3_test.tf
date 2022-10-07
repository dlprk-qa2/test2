resource "aws_s3_bucket" "logging2" {
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled    = true
  }
}

module "vpc_example_complete-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/complete-vpc"
  version = "3.14.4"
}
module "iam_example_iam-account" {
  source  = "terraform-aws-modules/iam/aws//examples/iam-account"
  version = "5.4.0"
}
module "security-group_example_complete" {
  source  = "terraform-aws-modules/security-group/aws//examples/complete"
  version = "4.13.0"
}  
  
