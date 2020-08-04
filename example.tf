terraform {
required_providers {
  cloudfoundry = {
    versions = ["0.12.2"]
    source = "example.com/cloudfoundry-community/cloudfoundry"
  }
 }
}
provider "cloudfoundry" {
    api_url = "api.cloud.service.gov.uk"
}
