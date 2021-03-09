provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_pubsub_topic" "t-google-pubsub-topic" {
  name = var.pubsub_topic_name
}

resource "google_storage_bucket" "t-google-storage-bucket-data-dump" {
  name  = var.dataflow_data_dump_bucket
}

resource "google_pubsub_subscription" "t-google-pubsub-subscription" {
  name  = var.pubsub_subscription_name
  topic = google_pubsub_topic.t-google-pubsub-topic.name

}

resource "google_dataflow_job" "t-google-dataflow-job" {

  name= var.dataflow_job_name 
  template_gcs_path = "gs://dataflow-templates/latest/Cloud_PubSub_to_Cloud_PubSub"
  temp_gcs_location = "gs://test-temp-data-dump-bucket7/"

  network = var.network
  parameters = {
    inputSubscription = google_pubsub_subscription.t-google-pubsub-subscription.id
    outputTopic = google_pubsub_topic.t-google-pubsub-topic.id
  }
}
