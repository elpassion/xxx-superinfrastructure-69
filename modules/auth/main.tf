provider "okta" {}

# https://www.terraform.io/docs/providers/okta/r/auth_server.html
resource "okta_auth_server" "xxx-auth-69" {
  audiences   = ["api://xxx-69"]
  description = "XXX AUTH 69 Server"
  name        = "XXX AUTH 69"
}

resource "okta_trusted_origin" "example" {
  name   = "development"
  origin = "http://localhost:3000"
  scopes = ["CORS", "REDIRECT"]
}

resource "okta_idp_social" "google" {
  type          = "GOOGLE"
  protocol_type = "OAUTH2"
  name          = "Sign in with Google"

  scopes = [
    "profile",
    "email"
  ]

  client_id     = var.google_oauth_client_id
  client_secret = var.google_oauth_client_secret
}

resource "okta_app_oauth" "xxx-spa-69" {
  label                      = "XXX SPA 69"
  type                       = "web"
  grant_types                = ["implicit", "authorization_code"]
  redirect_uris              = ["https://example.com/", "http://localhost:3000/"] # TODO: public endpoints
  response_types             = ["token", "id_token", "code"]
}

resource "okta_app_oauth" "xxx-admin-69" {
  label                      = "XXX ADMIN 69"
  type                       = "web"
  grant_types                = ["implicit", "authorization_code"]
  redirect_uris              = ["https://example.com/", "http://localhost:3000/"] # TODO: Admin endpoints
  response_types             = ["token", "id_token", "code"]
}

data "okta_group" "everyone" {
  name = "Everyone"
}

resource "okta_app_group_assignment" "assign_everyone_to_xxx-spa-69" {
  app_id = okta_app_oauth.xxx-spa-69.id
  group_id = data.okta_group.everyone.id
}

