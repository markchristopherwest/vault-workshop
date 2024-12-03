terraform {
  required_providers {
    vault = {
      source = "hashicorp/vault"
      version = "4.5.0"
    }
  }
}

provider "vault" {
  # Configuration options
  # address = "http://127.0.0.1:8200"
  # skip_tls_verify = true
  skip_child_token = true
}

