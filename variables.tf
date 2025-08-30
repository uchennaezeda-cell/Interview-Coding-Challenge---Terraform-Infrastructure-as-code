variable "region" {
  type    = string
}

variable "project" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "vpc_cidr_block" {
  type    = string
}

variable "tags" {
  type    = map(string)
}

variable "public_subnet_cidrs" {
  type    = list(string)
}

variable "private_subnet_cidrs" {
  type    = list(string)
}

variable "public_tags" {
  type    = map(string)
}

variable "private_tags" {
  type    = map(string)
}

variable "igw_tags" {
  type    = map(string)
}

variable "nat_eip_tags" {
  type    = map(string)
}

variable "nat_gw_tags" {
  type    = map(string)
}