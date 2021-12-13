terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      #version = "3.5.0"
      version = "3.51.0"
    }
  }
}

provider "google" {
  credentials = file("gserviceaccount.json")
  project = var.project
  region  = var.region
  zone    = var.zone
}