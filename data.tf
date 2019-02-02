data "google_compute_network" "default-network" {
  name =  "${var.network_conf}"
  project = "${data.google_project.default-project.name}"
}

data "google_project" "default-project" {
  project_id = "${var.project_id}"
}
