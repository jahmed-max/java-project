resource "google_compute_instance" "vm-instance" {
  name         = "test2"
  machine_type = "n1-standard-1"
  zone         = "us-east1-b"
  
  # tags="foo" , "bar"
  
  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20230306"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
}
