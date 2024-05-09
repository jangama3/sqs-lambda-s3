resource "aws_s3_bucket" "sqs-que-tf-ja1996" {
  bucket = "sqs-que-tf-ja1996"

  tags = {
    Name        = "sqs-que-tf"
  }
}