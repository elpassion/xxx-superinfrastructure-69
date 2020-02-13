output "auth_issuer_uri" {
  description = "Auth Server issuer URI"
  value       = module.auth.issuer
}

output "spa_credentials" {
  description = "SPA Oauth credentials"
  value = module.auth.spa_credentials
}

output "admin_credentials" {
  description = "Admin credentials"
  value = module.auth.admin_credentials
}

output "sign_in_test_url" {
  description = "Sign In test url"
  value = "https://dev-640756.okta.com/oauth2/v1/authorize?idp=${module.auth.google_idp_id}&client_id=${module.auth.spa_credentials.client_id}&response_type=id_token&response_mode=fragment&scope=openid%20email&redirect_uri=https%3A%2F%2Fexample.com%2F&state=WM6D&nonce=YsG76jo"
}
