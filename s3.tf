resource "aws_s3_bucket" "assets" {
  bucket = "my-app-assets-${random_id.bucket_id.hex}"
  # Remove acl here
}

resource "aws_s3_bucket_acl" "assets_acl" {
  bucket = aws_s3_bucket.assets.id
  acl    = "private"
}
