provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_bigtable_instance" "t-google-bigtable-instance" {
  name = var.bigtable_instance_name

  cluster {
    cluster_id   = var.cluster_id
    num_nodes    = var.nodes_count
    storage_type = var.storage_type
  }

  lifecycle {
    prevent_destroy = true
  }
}

resource "google_bigtable_table" "t-google-bigtable-table" {
  name          = var.bigtable_table_name
  instance_name = google_bigtable_instance.t-google-bigtable-instance.name
  split_keys    = ["a", "b", "c"]

  lifecycle {
    prevent_destroy = true
  }
}