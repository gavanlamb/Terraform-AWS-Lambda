output "lambda_arn" {
  value = aws_lambda_function.function.arn
}
output "lambda_invoke_arn" {
  value = aws_lambda_function.function.invoke_arn
}