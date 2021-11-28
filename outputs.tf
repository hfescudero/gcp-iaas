output "internal_IP" {
  value = google_compute_instance.passenger1.network_interface.0.network_ip
}

output "external_IP" {
  value = google_compute_instance.passenger1.network_interface.0.access_config.0.nat_ip
}

output "cpu_platform" {
  value = google_compute_instance.passenger1.cpu_platform
}

output "instance_id" {
  value = google_compute_instance.passenger1.instance_id
}