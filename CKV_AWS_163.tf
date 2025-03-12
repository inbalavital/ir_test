resource "aws_ecr_repository" "foo" {
  name                 = "bar"
  image_tag_mutability = "MUTABLE"
}