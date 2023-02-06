terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.17.0"
    }
  }
}

provider "kubernetes" {
  # Configuration options
}

resource "kubernetes_pod" "ubuntu_pod" {
  metadata {
    name = "ubuntu-pod"
  }

  spec {
    container {
      image = "ubuntu:latest"
      name  = "ubuntu-container"
    }
  }

  count = 3
}