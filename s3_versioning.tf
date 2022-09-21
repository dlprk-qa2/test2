resource "aws_s3_bucket" "s3_versioning1" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "vpc_example_complete-vpc" {
  source  = "terraform-aws-modules/vpc/aws//examples/complete-vpc"
  version = "3.14.4"
}

