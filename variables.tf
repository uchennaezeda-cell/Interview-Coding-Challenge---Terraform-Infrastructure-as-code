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