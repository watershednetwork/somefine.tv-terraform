terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "byrne-team"

    workspaces {
      name = "somefine_tv"
    }
  }

  required_version = ">= 1.0.8"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }

    dnsimple = {
      source  = "dnsimple/dnsimple"
      version = ">= 0.9"
    }
  }
}

