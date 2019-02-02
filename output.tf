output "instance1_ip_ext" {
  value = "${google_compute_instance.instance1.network_interface.0.access_config.0.nat_ip}"
  }

  output "instance2_ip_ext" {
    value = "${google_compute_instance.instance2.network_interface.0.access_config.0.nat_ip}"
    }

    output "instance3_ip_ext" {
      value = "${google_compute_instance.instance3.network_interface.0.access_config.0.nat_ip}"
      }
