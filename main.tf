provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_pubsub_topic" "t-google-pubsub-topic" {
  name = var.pubsub_topic_name
}

resource "google_pubsub_topic" "t-google-pubsub-topic-dead-letter" {
  name = var.pubsub_topic_dead_letter
}

resource "google_pubsub_subscription" "t-google-pubsub-subscription" {
  name  = var.pubsub_subscription_name
  topic = google_pubsub_topic.t-google-pubsub-topic.name

  dead_letter_policy {
    dead_letter_topic = google_pubsub_topic.t-google-pubsub-topic-dead-letter.id
    max_delivery_attempts = 10
  }
}