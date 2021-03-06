output "bucket_id" {
  description = "The name of the bucket"
  value       = module.logging_bucket.bucket_id
}

output "bucket_arn" {
  description = "The ARN of the bucket"
  value       = module.logging_bucket.bucket_arn
}

