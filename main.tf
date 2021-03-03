provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_dialogflow_agent" "t-google-dialogflow-agent" {
  display_name = var.display_name
  default_language_code = "en"
  supported_language_codes = ["fr","de","es"]
  time_zone = var.time_zone
  description = "Example description."
  enable_logging = true
  match_mode = var.match_mode
  classification_threshold = 0.3
  api_version = var.api_version
  tier = var.tier
}