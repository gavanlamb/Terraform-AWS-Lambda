locals {
  default_tags = {
    Company = var.company
    Environment = var.environment
    Name = var.name
    service = var.service
    ManagedBy = "Terraform"
  }
}

resource "aws_lambda_function" "function" {
  function_name = var.lambda_name

  handler = var.handler
  runtime = var.runtime
  timeout = var.timeout

  memory_size = var.memory_size

  s3_bucket = var.serverless_repository
  s3_key = var.serverless_repository_key

  role = aws_iam_role.function.arn

  environment {
    variables = var.environment_variables
  }

  tags =  merge(local.default_tags, var.tags)
}
resource "aws_iam_role" "function" {
  name = var.role_name
  path = "/lambda/"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
  tags = merge(local.default_tags, var.tags)
}
