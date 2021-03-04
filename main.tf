provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_service_account" "t-google-service-account" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

resource "google_container_cluster" "t-google-container-cluster" {
  name     = var.cluster_name
  location = var.region

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = var.node_pool_name
  location   = var.region
  cluster    = google_container_cluster.t-google-container-cluster.name
  node_count = 1

  node_config {
    preemptible  = true
    machine_type = var.machine_type"e2-medium"

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = google_service_account.t-google-service-account.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}