resource google_compute_instance "instance" {
  machine_type = ""
  name = ""
  boot_disk {}
  network_interface {}
  metadata = {
    block-project-ssh-keys = true
  }
}
