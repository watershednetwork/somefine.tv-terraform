resource "aws_s3_bucket" "episodes" {
  bucket = "somefine-tv"
  acl    = "private"
}
