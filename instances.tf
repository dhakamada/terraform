resource "aws_instance" "dev" {
  count         = 2
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "dev${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] //id do security group
}


resource "aws_instance" "dev3" {
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "dev3"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] //id do security group
}

resource "aws_instance" "dev4" {
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"] //id do security group
  depends_on = [
    aws_s3_bucket.dev3
  ]
}

// outra regiao
/*
resource "aws_instance" "dev5" {
  provider      = "aws.us-east-2"
  ami           = var.amis["us-east-2"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "dev5"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
  depends_on = [
    "aws_dynamodb_table.dynamodb-homolog"
  ]
}
*/

# resource "aws_instance" "dev6" {
#   provider      = "aws.us-east-2"
#   ami           = var.amis["us-east-2"]
#   instance_type = "t2.micro"
#   key_name      = var.key_name
#   tags = {
#     "Name" = "dev6"
#   }
#   vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-2.id}"]
# }
