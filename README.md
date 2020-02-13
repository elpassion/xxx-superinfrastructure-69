# Setting up okta provider

Currently `terraform init` fails with octa provider with following error

> Error verifying checksum for provider "okta"
> The checksum for provider distribution from the Terraform Registry
> did not match the source. This may mean that the distributed files
> were changed after this version was released to the Registry.

> Error: unable to verify checksum

Okta is working with Hashicorp to make theirs provider official. The progress can be tracked [here](https://github.com/articulate/terraform-provider-okta/issues/317)

To be able to work for now ith okta provider you need to [download](https://github.com/articulate/terraform-provider-okta/releases) or [build](https://github.com/articulate/terraform-provider-okta#building-the-provider) a provider and install as a [third party plugin](https://www.terraform.io/docs/configuration/providers.html#third-party-plugins)

In order to use okta provider you need to set `OKTA_API_TOKEN` and `OKTA_ORG_NAME` env variable

In order to setup application you need to setup `google_oauth_client_id` and `google_oauth_client_secret` variables
