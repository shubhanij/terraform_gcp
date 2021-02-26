provider "google-beta" {
  project = var.project
  region  = var.region
  zone    = var.zone
}

resource "google_compute_forwarding_rule" "t-compute-forwarding-rule" {
  provider              = google-beta
  name                  = var.compute_forwarding_rule
  region                = var.region
  load_balancing_scheme = "INTERNAL"
  all_ports             = true
  backend_service       = google_compute_region_backend_service.t-compute-region-backend-service.id
 
}


resource "google_compute_region_backend_service" "t-compute-region-backend-service" {
  provider              = google-beta
  name                  = var.backend_service
  region                = var.region
  health_checks         = [google_compute_health_check.t-compute-health-check.id]
  
}

resource "google_compute_health_check" "t-compute-health-check" {
  provider              = google-beta
  name                  = var.compute_health_check
  check_interval_sec    = 1
  timeout_sec           = 1
  
  tcp_health_check {
    port  = "80"

  }
}