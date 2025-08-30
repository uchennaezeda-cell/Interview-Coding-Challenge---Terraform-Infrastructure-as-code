variable "ami" {
  type        = string
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  type        = string
}

variable "security_group_id" {
  type        = string
}

variable "tags" {
  type        = map(string)
  description = "Tags for EC2 instance"
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
