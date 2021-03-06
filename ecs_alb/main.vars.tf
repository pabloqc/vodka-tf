variable "name" {
  default     = "default"
  description = "The name of the loadbalancer"
}

variable "instance_security_group_id" {}

variable "branches" {
  type = "list"
}

variable "certificate_arns" {
  type        = "list"
  description = "The certificate ARN for the Albs"
}

variable "enable_traefik" {
  default     = false
  description = "This enables Traefik for the security roles and target groups"
}

variable "cluster" {
  default     = "default"
  description = "The cluster to load balance"
}

variable "public_subnet_ids" {
  type        = "list"
  description = "List of public subnet ids to place the loadbalancer in"
}

variable "vpc_id" {
  description = "The VPC id"
}

variable "deregistration_delay" {
  default     = "300"
  description = "The default deregistration delay"
}

variable "health_check_path" {
  default     = "/"
  description = "The default health check path"
}

variable "allow_cidr_block" {
  default     = "0.0.0.0/0"
  description = "Specify cird block that is allowd to acces the LoadBalancer"
}

variable "enable_stickiness" {
  default     = false
  description = "Enable stickiness for the ALB"
}

variable "stickiness_cookie_duration" {
  default     = 300
  description = "Duration of the stickiness cookie"
}

# ! private
variable "_enable_http2" {
  default = true
}

variable "tags" {
  type    = "map"
  default = {}
}
