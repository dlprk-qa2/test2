resource "aws_s3_bucket" "s3_versioning1" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "ec2-instance_example_complete" {
  source  = "terraform-aws-modules/ec2-instance/aws//examples/complete"
  version = "4.1.4"
}

