resource "hcloud_server" "HaBack" {
  count       = var.instances_HaBack
  name        = "HaBack-${count.index}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "back"
  }
 
  user_data = file("yml/HaBack.yml")

}