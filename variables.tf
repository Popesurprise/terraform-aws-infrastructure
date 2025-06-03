variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-1" # You can change this to your preferred region
}

variable "db_username" {
  description = "Username for the RDS instance"
  type        = string
  default     = "dbmaster"
}

variable "db_password" {
  description = "Password for the RDS instance"
  type        = string
  sensitive   = true
}

