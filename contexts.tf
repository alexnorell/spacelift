resource "spacelift_context" "cloudflare_creds" {
  description = "Manage pages, domains, and everything else"
  name        = "Cloudflare credentials"
  space_id    = local.space_id
}
