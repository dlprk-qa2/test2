resource "aws_s3_bucket" "logging2" {
  bucket = "examplebuckettftest"
  acl    = "private"
  versioning {
    enabled    = true
  }
}
