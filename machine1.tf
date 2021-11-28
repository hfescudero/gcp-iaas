resource "google_compute_instance" "passenger1" {
  name         = "passenger1"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  #tags = ["foo", "bar"]
  labels = {
    name  = "passenger1",
    owner = "fernando",
  os = "linux" }

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
  metadata_startup_script = "echo ello world > /test.txt"

  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }

}