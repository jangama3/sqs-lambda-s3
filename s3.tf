resource "aws_s3_bucket" "sqs-que-tf-ja1996" {
  bucket = "sqs-que-tf-ja1996"
  bucket_key_enabled = true

  tags = {
    Name        = "sqs-que-tf"
  }
}