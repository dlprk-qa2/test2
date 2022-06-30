terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  profile = "default"
  region  = "us-west-2"
}
resource "aws_s3_bucket" "examplebucketver" {
  bucket = "examplebuckettftest"
  acl    = "public-read-write"
  versioning {
    enabled = false
  }
}
esource "aws_s3_bucket" "examplebucketun" {
  bucket = "examplebuckettftest"
  acl    = "public-read-write"
  versioning {
    enabled = true
  }
  logging {
    target_bucket = aws_s3_bucket.log_bucket.id
    target_prefix = "log/"
    }
}

