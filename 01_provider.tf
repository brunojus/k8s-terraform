# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "telefonica-poc-bruno"
  region  = "europe-west3"
}

# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "acs-tf-state-staging"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

