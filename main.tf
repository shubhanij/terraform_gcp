provider "google" {
  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_dns_record_set" "t-google-dns-record-set" {
  name = "frontend.${google_dns_managed_zone.t-google-dns-managed-zone.dns_name}"
  type = "A"
  ttl  = 300

  managed_zone = google_dns_managed_zone.t-google-dns-managed-zone.name

  rrdatas = [google_compute_instance.t-google-compute-instance.network_interface[0].access_config[0].nat_ip]
}

resource "google_compute_instance" "t-google-compute-instance" {
  name         = var.instance_name
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}

resource "google_dns_managed_zone" "t-google-dns-managed-zone" {
  name     = var.dns_managed_zone
  dns_name = var.dns_name
}