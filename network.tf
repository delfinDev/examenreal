resource "hcloud_network" "hc_private" {
  name     = "hc_private"
  ip_range = var.ip_range
}

resource "hcloud_server_network" "internal_network" {
  count     = var.instances_ElasticSearch
  server_id = hcloud_server.ElasticSearch[count.index].id
  subnet_id = hcloud_network_subnet.hc_private_subnet.id
}


resource "hcloud_network_subnet" "hc_private_subnet" {
  network_id   = hcloud_network.hc_private.id
  type         = "cloud"
  network_zone = "eu-central"
  ip_range     = var.ip_range
}