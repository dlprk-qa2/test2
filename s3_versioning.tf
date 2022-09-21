resource "aws_s3_bucket" "s3_versioning" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "s3-bucket_example_complete" {
  source  = "terraform-aws-modules/s3-bucket/aws//examples/complete"
  version = "3.4.0"
}

