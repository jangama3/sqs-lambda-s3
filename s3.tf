resource "aws_s3_bucket" "sqs-que-tf-ja1996" {
  bucket = "sqs-que-tf-ja1996"


  tags = {
    Name        = "sqs-que-tf"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "example" {
  bucket = aws_s3_bucket.sqs-que-tf-ja1996.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = "aws/s3"
      sse_algorithm     = "aws:kms:dsse"
    }
  }
}