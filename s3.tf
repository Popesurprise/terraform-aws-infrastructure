resource "random_id" "bucket_id" {
  byte_length = 4
}

resource "aws_s3_bucket" "assets" {
  bucket = "my-app-assets-${random_id.bucket_id.hex}"
  acl    = "private"

  tags = {
    Name        = "AppAssetsBucket"
    Environment = "dev"
  }
}
