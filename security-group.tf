resource "aws_security_group" "access-ssh" {
  name        = "access-ssh"
  description = "access-ssh"

  ingress = [
    {
      description      = "SSH from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = var.cdirs_access_remoto
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = true
    }
  ]

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "access-ssh-us-east-2" {
  provider    = aws.us-east-2
  name        = "access-ssh"
  description = "access-ssh"

  ingress = [
    {
      description      = "SSH from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = var.cdirs_access_remoto
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = true
    }
  ]

  tags = {
    Name = "ssh"
  }
}
