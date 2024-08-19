resource "spacelift_context" "ezgpg_cloudflare_creds" {
  description = "ezgpg.com - Manage pages, domains, and everything else"
  name        = "EZGPG Cloudflare credentials"
  space_id    = local.space_id
}

moved {
  from = spacelift_context.cloudflare_creds
  to   = spacelift_context.ezgpg_cloudflare_creds
}

resource "spacelift_context_attachment" "ezgpg_cloudflare_access" {
  context_id = spacelift_context.ezgpg_cloudflare_creds.id
  stack_id   = spacelift_stack.ezgpg.id
  priority   = 0
}
