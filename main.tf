provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_container_registry" "t-google-container-registry" {
  location = var.container_registry_location
}