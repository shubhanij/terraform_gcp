provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_dataproc_cluster" "t-google-dataproc-cluster" {
  name     = var.dataproc_cluster_name
  region   = var.region
  
}