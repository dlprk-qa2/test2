resource "aws_s3_bucket" "s3_versioning3" {
  bucket = "examplebuckettftest"
  bucket_acl    = "public-read-write"
  versioning_configuration {
    status = "Enabled"
  }
}
