variable "vpc_id" {
  type        = string
}

variable "azs" {
  type        = list(string)
  description = "List of Availability Zones"
}

variable "public_subnet_cidrs" {
  type        = list(string)
}

variable "private_subnet_cidrs" {
  type        = list(string)
}

variable "public_tags" {
  type        = map(string)
}

variable "private_tags" {
  type        = map(string)
}

variable "project" {
  type        = string
  description = "Project name prefix"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
}
