variable "vpc_id" {
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Tags for security group"
  default     = {}
}

variable "project" {
  type        = string
  description = "Project name prefix"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
}
