terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "hakamada"

    workspaces {
      name = "aws-hakamada"
    }
  }
}
