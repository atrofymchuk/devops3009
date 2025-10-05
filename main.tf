terraform { 
  required_version = ">= 1.3.0"

  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
  }
}

provider "hcloud" {
  token = var.hcloud_token 
}

resource "hcloud_server" "server" {
  name = "node-1"
  server_type = "cpx11"
  location = "hel1"
  image = "ubuntu-24.04"
}