terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0.0"
    }
  }

}
// Recursos na main
provider "aws" {
  region  = "us-east-1"
  profile = "hakamada"
}

provider "aws" {
  alias   = "us-east-2"
  region  = "us-east-2"
  profile = "hakamada"
}


