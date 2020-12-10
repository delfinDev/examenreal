resource "hcloud_ssh_key" "default" {
  name       = "delfos"
  public_key = file("~/.ssh/tf_hetzner.pub")
}