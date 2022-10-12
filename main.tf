terraform {
  required_providers {
    snowflake = {
      source  = "chanzuckerberg/snowflake"
      version = "0.25.17"
    }
  }

  backend "remote" {
    organization = "nrajaofetra"

    workspaces {
      name = "gh-actions-demo2022"
    }
  }
}

provider "snowflake" {
}

resource "snowflake_database" "demo_db_tf" {
  name    = "DEMO_DB_TERRAFROM"
  comment = "Database for Snowflake Terraform demo"
}