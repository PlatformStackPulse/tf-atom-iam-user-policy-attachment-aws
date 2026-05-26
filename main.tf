# -----------------------------------------------------
# Atom: IAM User Policy Attachment
# Attaches a managed policy to an IAM user.
# -----------------------------------------------------
resource "aws_iam_user_policy_attachment" "this" {
  count = module.this.enabled ? 1 : 0

  user       = var.user_name
  policy_arn = var.policy_arn
}
