resource "aws_iam_role" "sqs-lambda-role-ja2" {
  name = "sqs-lambda-role-ja2"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    Name = "tag-sqs-lambda-role-ja2"
  }
}

resource "aws_iam_role_policy_attachment" "sqs-lambda-jaimp" {
  role       = aws_iam_role.sqs-lambda-role-ja2.name
  policy_arn = "arn:aws:iam::928326215142:policy/sqs-lambda-ja"
}



