resource "aws_s3_bucket" "s3_versioning1" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}

module "rds_example_complete-mssql" {
  source  = "terraform-aws-modules/rds/aws//examples/complete-mssql"
  version = "5.1.0"
}

