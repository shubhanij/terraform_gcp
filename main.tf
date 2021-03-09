provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_pubsub_topic" "t-google-pubsub-topic" {
  name = var.pubsub_topic_name
}

resource "google_bigquery_dataset" "t-google-bigquery-dataset" {
  dataset_id = var.bigquery_dataset_id
  location = var.bigquery_dataset_location
  default_table_expiration_ms = 3600000
}

resource "google_storage_bucket" "t-google-storage-bucket" {
  name=var.dataflow_template_bucket
}

resource "google_bigquery_table" "t-google-bigquery-table" {
  dataset_id= google_bigquery_dataset.t-google-bigquery-dataset.id
  table_id =var.bigquery_table_id
}


resource "google_dataflow_job" "t-google-dataflow-job" {

  name= var.dataflow_job_name 
  template_gcs_path = "path-to-template"
  temp_gcs_location = "directory-path"

  network = var.network
  parameters = {
    inputTopic = "google_pubsub_topic.t-google-pubsub-topic.id"
    outputTableSpec = "google_bigquery_table.t-google-bigquery-table.id"
  }
}
