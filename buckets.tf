resource "aws_s3_bucket" "dev3" {
  bucket = "hakamada-bucket"
  acl    = "private"

  tags = {
    Name = "hakamada-dev3"
  }
}

// bucket é multi regional
