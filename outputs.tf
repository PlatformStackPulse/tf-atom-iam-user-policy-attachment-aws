output "enabled" {
  description = "Whether the module is enabled"
  value       = local.enabled
}

output "user" {
  description = "Name of the user the policy is attached to"
  value       = try(aws_iam_user_policy_attachment.this[0].user, null)
}

output "policy_arn" {
  description = "ARN of the attached policy"
  value       = try(aws_iam_user_policy_attachment.this[0].policy_arn, null)
}
