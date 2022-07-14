terraform {
  backend "gcs" {
    bucket = "terraform-backend-tomaryrpg"
    prefix = "terraform/state"
  }
}

terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "cloudflare" {
}
