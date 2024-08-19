resource "spacelift_stack" "ezgpg" {
  autodeploy        = true
  branch            = "main"
  name              = "ezgpg"
  project_root      = "infrastructure"
  repository        = "ezgpg"
  tool              = local.tool
  terraform_version = local.tf_version
  space_id          = local.space_id
  slug              = "ezgpg"

  administrative               = true
  protect_from_deletion        = true
  terraform_smart_sanitization = true
}
