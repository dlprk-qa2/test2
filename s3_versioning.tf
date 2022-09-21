resource "aws_s3_bucket" "s3_versioning" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "eks_example_complete" {
  source  = "terraform-aws-modules/eks/aws//examples/complete"
  version = "18.29.0"
}

