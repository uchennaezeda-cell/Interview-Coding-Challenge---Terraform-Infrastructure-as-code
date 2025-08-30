variable "vpc_id" {
  type        = string
}

variable "igw_id" {
  type        = string
}

variable "public_subnet_ids" {
  type        = list(string)
}

variable "private_subnet_ids" {
  type        = list(string)
}

variable "nat_gateway_ids" {
  type        = list(string)
}

variable "public_tags" {
  type    = map(string)
}

variable "private_tags" {
  type    = map(string)
}

variable "project" {
  type        = string
  description = "Project name prefix"
}

variable "environment" {
  type        = string
  description = "Deployment environment"
}

variable "public_route_table_tags" {
  type    = map(string)
  default = {}
}

variable "private_route_table_tags" {
  type    = map(string)
  default = {}
}
