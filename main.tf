variable "checkly_api_key" {}

terraform {
  required_providers {
    checkly = {
      source = "checkly/checkly"
      version = "0.8.1"
    }
  }
}

provider "checkly" {
  api_key = var.checkly_api_key
}

resource "checkly_check" "example-check" {

  name                      = "Example Check"
  type                      = "BROWSER"
  activated                 = true
  should_fail               = false
  frequency                 = 10
  double_check              = true
  ssl_check                 = false
  use_global_alert_settings = true
  locations = [
    "us-west-1",
    "eu-central-1"
  ]

  script = file("${path.module}/scripts/example-check.js")

}

resource "checkly_snippet" "handle_pp" {
  name = "handle_pp"
  script = file("${path.module}/snippets/handle_pp.js")
}
