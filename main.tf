provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_ml_engine_model" "t-google-ml-engine-model" {
  name        = var.ml_engine_model_name
  description = "My model"
  labels = {
    function = "analysis"
  }
  online_prediction_logging         = false
  online_prediction_console_logging = false
}