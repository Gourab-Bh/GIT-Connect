terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.51.0"
    }
  }
}

provider "google" {
  project = "planar-rarity-376404"
  region  = "us-central1"
  zone    = "us-central1-c"
}
