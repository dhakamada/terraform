variable "amis" {
  type = map(string)

  default = {
    "us-east-1" = "ami-09e67e426f25ce0d7"
    "us-east-2" = "ami-0443305dabd4be2bc"
  }
}

variable "cdirs_access_remoto" {
  type    = list(string)
  default = ["179.209.97.254/32"]
}

variable "key_name" {
  type    = string // it's not necessary, because the default type is string
  default = "terraform-aws"
}
