terraform {
  backend "gcs" {
    bucket = "terraform-backend-tomaryrpg"
    prefix = "terraform/state"
  }
}

terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}

provider "github" {
  owner = "mc-host24"
}

provider "cloudflare" {
}
