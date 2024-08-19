resource "spacelift_stack" "ezgpg" {
  autodeploy   = true
  branch       = "main"
  name         = "ezgpg"
  project_root = "infrastructure"
  repository   = "ezgpg"
  space_id     = local.space_id
  slug         = "ezgpg"

  terraform_workflow_tool = local.tool
  terraform_version       = local.tf_version

  protect_from_deletion        = true
  terraform_smart_sanitization = true
}
