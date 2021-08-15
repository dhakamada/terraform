resource "aws_instance" "hakamada-dev" {
  count         = 2
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "hakamada-dev${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.access-ssh.id}"]
}


resource "aws_instance" "hakamada-dev3" {
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "hakamada-dev3"
  }
  vpc_security_group_ids = ["${aws_security_group.access-ssh.id}"]
}

resource "aws_instance" "hakamada-dev4" {
  ami           = var.amis["us-east-1"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "hakamada-dev4"
  }
  vpc_security_group_ids = ["${aws_security_group.access-ssh.id}"]
  depends_on = [
    aws_s3_bucket.hakamada
  ]
}

// other region
/*
resource "aws_instance" "hakamada-dev5" {
  provider      = "aws.us-east-2"
  ami           = var.amis["us-east-2"]
  instance_type = "t2.micro"
  key_name      = var.key_name
  tags = {
    "Name" = "hakamada-dev5"
  }
  vpc_security_group_ids = ["${aws_security_group.access-ssh-us-east-2.id}"]
  depends_on = [
    "aws_dynamodb_table.dynamodb-homolog"
  ]
}
*/
