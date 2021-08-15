resource "aws_s3_bucket" "hakamada" {
  bucket = "hakamada-bucket"
  acl    = "private"

  tags = {
    Name = "hakamada"
  }
}
