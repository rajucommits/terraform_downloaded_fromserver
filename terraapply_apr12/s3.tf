resource "aws_s3_bucket" "mys3bucket" {
  bucket = var.mybucket

  tags = {
    Name        = var.mybucket
  }
}

