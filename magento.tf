resource "hcloud_server" "magento" {
  count       = var.instances_magento
  name        = "magento-${count.index}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "front"
  }
 
  user_data = file("yml/magento.yml")

}