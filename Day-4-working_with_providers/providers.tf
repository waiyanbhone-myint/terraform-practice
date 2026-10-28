provider "aws" {
  region = "us-east-1"
}

provider "aws" {
    region = "us-east-2"
    alias = "us-east2"
}

resource "aws_s3_bucket" "s3-east-2" {
  provider = aws.us-east2
  bucket = "waiyanuseast2examplebucket"
}

resource "aws_s3_bucket" "s3-east-1" {
    bucket = "waiyanuseast1examplebucket"
}