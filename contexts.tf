resource "spacelift_context" "cloudflare_creds" {
  description = "Manage pages, domains, and everything else"
  name        = "Cloudflare credentials"
  space_id    = local.space_id
}

resource "spacelift_context_attachment" "ezgpg_cloudflare_access" {
  context_id = spacelift_context.cloudflare_creds.id
  stack_id   = spacelift_stack.ezgpg.id
  priority   = 0
}
