resource "hcloud_server" "HaFront" {
  count       = var.instances_HaFront
  name        = "HaFront-${count.index}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "front"
  }
 
  user_data = file("yml/HaFront.yml")

}