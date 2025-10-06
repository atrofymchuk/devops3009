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
  server_type = "cax21"
  location = "hel1"
  image = "rocky-10"
  public_net {
    ipv4_enabled = true
    ipv6_enabled = false
  }
  labels = {
    "env" : "devops3009"
  }
  user_data = <<-EOF
    #!/bin/bash
    dnf update -y
    dnf install -y nginx
    echo "Hello from Terraform!" > /var/www/html/index.html
  EOF
}