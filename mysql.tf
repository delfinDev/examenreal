resource "hcloud_server" "mysql" {
  count       = var.instances_mysql
  name        = "mysql-${count.index}"
  image       = var.os_type
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  labels = {
    type = "back"
  }
 
  user_data = file("yml/mysql.yml")

}