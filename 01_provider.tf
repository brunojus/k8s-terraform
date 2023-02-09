provider "google" {
  project = "telefonica-poc-bruno"
  region  = "europe-west3"
}

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

