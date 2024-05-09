resource "aws_s3_bucket" "sqs-que-tf" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "sqs-que-tf"
  }
}