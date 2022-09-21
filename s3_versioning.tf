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
