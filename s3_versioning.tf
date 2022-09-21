resource "aws_s3_bucket" "s3_versioning1" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "sqs_example_complete" {
  source  = "terraform-aws-modules/sqs/aws//examples/complete"
  version = "3.3.0"
}

