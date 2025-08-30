variable "vpc_id" {
  type        = string
}

variable "igw_tags" {
  type        = map(string)
}

variable "nat_gateway_count" {
  type        = number
}

variable "nat_subnet_ids" {
  type        = list(string)
}

variable "nat_eip_tags" {
  type        = map(string)
  description = "Tags for NAT Elastic IPs"
}

variable "nat_gw_tags" {
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
