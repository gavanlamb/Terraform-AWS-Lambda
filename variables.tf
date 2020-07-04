variable "company" {
  type = string
  description = "Company name"
}
variable "environment" {
  type = string
  description = "Environment name"
}
variable "name" {
  type = string
  description = "Name"
}
variable "service" {
  type = string
  description = "Service name"
}
variable "runtime" {
  type = string
  description = "Lambda runtime"
}
variable "lambda_name" {
  type = string
  description = "Lambda name"
}
variable "handler" {
  type = string
  description = "Lambda handler"
}
variable "timeout" {
  type = string
  description = "Lambda request timeout"
}
variable "memory_size" {
  type = string
  default = "128"
}
variable "role_name" {
  type = string
  description = "Role name"
}
variable "serverless_repository" {
  type = string
}
variable "serverless_repository_key" {
  type = string
}
variable "environment_variables" {
  type = "map"
  default = {}
}
variable "tags" {
  type        = "map"
  default     = {}
}
