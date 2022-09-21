resource "aws_s3_bucket" "s3_versioning" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "elb_example_complete" {
  source  = "terraform-aws-modules/elb/aws//examples/complete"
  version = "3.0.1"
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
module "eks_example_complete" {
  source  = "terraform-aws-modules/eks/aws//examples/complete"
  version = "18.29.0"
}
module "s3-bucket_example_complete" {
  source  = "terraform-aws-modules/s3-bucket/aws//examples/complete"
  version = "3.4.0"
}
module "rds_example_complete-mssql" {
  source  = "terraform-aws-modules/rds/aws//examples/complete-mssql"
  version = "5.1.0"
}

