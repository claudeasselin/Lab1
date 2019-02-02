resource "google_compute_instance" "instance1" {
  name         = "instance1"
  machine_type = "n1-standard-1"
  zone         = "us-central1-c"
  tags = ["foo", "bar"]

  project = "${data.google_project.default-project.name}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "${data.google_compute_network.default-network.name}"
    access_config {
      // Ephemeral IP
    }
  }
}
resource "google_compute_instance" "instance2" {
  name         = "instance2"
  machine_type = "n1-standard-1"
  zone         = "us-central1-c"
  tags = ["foo", "bar"]
  project = "${data.google_project.default-project.name}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
  network = "${data.google_compute_network.default-network.name}"
    access_config {
      // Ephemeral IP
    }
  }
}
resource "google_compute_instance" "instance3" {
  name         = "instance3"
  machine_type = "n1-standard-1"
  zone         = "us-central1-c"
  tags = ["foo", "bar"]
  project = "${data.google_project.default-project.name}"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  network_interface {
    network = "${data.google_compute_network.default-network.name}"
    access_config {
      // Ephemeral IP
    }
  }
}
