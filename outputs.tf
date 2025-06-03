output "db_endpoint" {
  description = "Endpoint of the RDS PostgreSQL instance"
  value       = aws_db_instance.postgres.endpoint
}
output "s3_bucket_name" {
  description = "Name of the S3 bucket for static assets"
  value       = aws_s3_bucket.assets.bucket
}
