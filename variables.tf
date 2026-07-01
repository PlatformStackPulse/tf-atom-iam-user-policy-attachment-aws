# -----------------------------------------------------------------------------
# Module-Specific Variables
#
# Note: Standard labeling variables (enabled, namespace, tenant, environment,
# stage, name, delimiter, attributes, tags, label_order, etc.) are provided
# by context.tf via the tf-label module.
# -----------------------------------------------------------------------------

variable "user_name" {
  description = "Name of the IAM user to attach the policy to"
  type        = string

  validation {
    condition     = can(regex("^[a-zA-Z0-9+=,.@_-]+$", var.user_name))
    error_message = "user_name must contain only valid IAM user name characters."
  }
}

variable "policy_arn" {
  description = "ARN of the IAM policy to attach"
  type        = string

  validation {
    condition     = can(regex("^arn:aws:iam::", var.policy_arn))
    error_message = "policy_arn must be a valid IAM policy ARN."
  }
}
