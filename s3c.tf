resource "aws_s3_bucket_acl" "bad_acl" {
  bucket = aws_s3_bucket.example.id
  acl    = "public-read-write"
}