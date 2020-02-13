module "auth" {
  source = "./modules/auth"

  google_oauth_client_id = var.google_oauth_client_id
  google_oauth_client_secret = var.google_oauth_client_secret

}
