resource "google_compute_instance" "instance" {
  machine_type = ""
  name = ""
  boot_disk {}
  network_interface {
    access_config {
      network_tier = "STANDARD"
    }
  }
}
