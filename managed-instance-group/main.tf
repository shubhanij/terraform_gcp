terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  version = "3.5.0"

  credentials = file("dark-automata-287906-cbf1f3ea809f.json")

  project = var.project
  region = var.region
  zone = var.zone
}

resource "google_compute_instance_template" "t-instance-template" {
  name         = var.instance_template_name
  machine_type = var.machine_type

 disk {
    source_image = var.source_image
    auto_delete  = true
    boot         = true
  }

  network_interface {
    network = google_compute_network.t-terraform-network.name
  }

  }

  resource "google_compute_network" "t-terraform-network" {
    name = var.network_interface
  }

data "google_compute_image" "t-compute-image" {
  family  = var.source_image_family
  project = var.source_image_project
}

resource "google_compute_disk" "t-compute-disk" {
  name  = "${var.instance_template_name}-vol"
  image = data.google_compute_image.t-compute-image.self_link
  size  = 10
  type  = "pd-ssd"
  zone  = var.compute_disk_zone
}

resource "google_compute_region_instance_group_manager" "t-instance-group-manager" {
  name = var.instance_group_manager
  base_instance_name = var.base_instance_name
  region = var.region

  version {
    instance_template = google_compute_instance_template.t-instance-template.id
  }
}