provider "google" {


project = "leafy-trainer-359815"
#credentials = file("terraform.json")
region = "us-central1"
zone = "us-central1-c"
}

resource "google_compute_instance" "vm-instance" {
  name         = "test"
  machine_type = "e2-medium"

  tags = ["web", "host"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}