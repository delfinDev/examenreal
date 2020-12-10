variable "hcloud_token" {
  default = "Rpq8B70ZZoaxuWNQVWL54tkmfroi6WKGJIws3vlZcLmsCOWeZyP1SfQ6jKmmBbIq"
}
variable "location" {
  default = "nbg1"
}

variable "http_protocol" {
  default = "http"
}

variable "http_port" {
  default = "80"
}

variable "instances_Akeneo" {
  default = "3"
}
variable "instances_ElasticSearch" {
  default = "3"
}
variable "instances_magento" {
  default = "3"
}
variable "instances_redisCache" {
  default = "3"
}
variable "instances_HaFront" {
  default = "3"
}
variable "instances_HaBack" {
  default = "3"
}

variable "server_type" {
  default = "cx11"
}

variable "os_type" {
  default = "debian-10"
}

variable "disk_size" {
  default = "20"
} 

variable "ip_range" {
  default = "10.0.1.0/24"
}