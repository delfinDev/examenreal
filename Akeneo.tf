resource "hcloud_server" "Akeneo" {
  count       = var.instances_Akeneo
  name        = "Akeneo-${count.index}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "front"
  }
 
  user_data = file("yml/Akeneo.yml")

}