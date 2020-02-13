output "issuer" {
  description = "Issuer URI"
  value       = okta_auth_server.xxx-auth-69.issuer
}

output "spa_credentials" {
  description = "Spa credentials"
  value = {
    client_id = okta_app_oauth.xxx-spa-69.client_id
    client_secret = okta_app_oauth.xxx-spa-69.client_secret
  }
}

output "admin_credentials" {
  description = "Admin credentials"
  value = {
    client_id = okta_app_oauth.xxx-admin-69.client_id
    client_secret = okta_app_oauth.xxx-admin-69.client_secret
  }
}

output "google_idp_id" {
  description = "Google identity provider idp"
  value = okta_idp_social.google.id
}
