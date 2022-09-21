resource "aws_s3_bucket" "s3_versioning" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "security-group_example_complete" {
  source  = "terraform-aws-modules/security-group/aws//examples/complete"
  version = "4.13.0"

