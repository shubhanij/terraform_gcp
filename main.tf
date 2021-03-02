provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_datastore_index" "t-google-datastore-index" {
  kind = var.datastore_index_kind
  properties {
    name = "test_property_1"
    direction = "ASCENDING"
  }
  properties {
    name = "test_property_2"
    direction = "ASCENDING"
  }
}