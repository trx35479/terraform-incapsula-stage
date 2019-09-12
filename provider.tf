provider "incapsula" {}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "thecloudnativeorg"

    workspaces {
      prefix = "incapsula-infra-"
    }
  }
}