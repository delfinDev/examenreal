resource "hcloud_server" "redisCache" {
  count       = var.instances_redisCache
  name        = "redisCache-${count.index}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "back"
  }
 
  user_data = file("yml/redisCache.yml")

}