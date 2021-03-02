provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_bigquery_dataset" "t-google-bigquery-dataset" {
  dataset_id                  = var.dataset_id
  location                    = var.bigquery_dataset_location
  default_table_expiration_ms = 3600000

  labels = {
    env = "test"
  }
}