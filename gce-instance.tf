resource "google_compute_instance" "t-google-compute-instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  project      = var.project
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = var.network
  }

  service_account {
    email  = var.service_account
    scopes = ["cloud-platform"]
  }
}