resource "aws_s3_bucket" "episodes" {
  bucket = "somefine-tv"
}

resource "aws_s3_bucket_ownership_controls" "private" {
  bucket = aws_s3_bucket.episodes.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "episodes-private" {
  depends_on = [aws_s3_bucket_ownership_controls.private]

  bucket = aws_s3_bucket.episodes.id
  acl    = "private"
}
