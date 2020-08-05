terraform {
required_providers {
  cloudfoundry = {
#    versions = ["0.12.2"]
    source = "example.com/cloudfoundry-community/cloudfoundry"
  }
 }
}
provider "cloudfoundry" {
    api_url = "https://api.cloud.service.gov.uk"
    user = "<INSERT USER ID>"
    sso_passcode = var.sso_passcode
    store_tokens_path= "/Users/<name>/.cf/config-terraform.json"
#   password = "${var.password}"
#    uaa_client_id = "admin"
#    uaa_client_secret = "${var.uaa_admin_client_secret}"
#    skip_ssl_validation = true
#    app_logs_max = 30
}

 resource "cloudfoundry_app" "example-sinatra" {
    name = "terraform-nginx"
    docker_image = "nginx:latest"
    space = "25e1757c-3289-487c-bf34-e8f929096540"
    timeout = 1000
}

variable "sso_passcode" {
  type = string
}
