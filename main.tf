resource "digitalocean_kubernetes_cluster" "doks" {
  name   = "karo-cluster"
  region = "nyc1"
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = "1.27.4-do.0"

  node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-4gb"
    node_count = 3

  }
}

