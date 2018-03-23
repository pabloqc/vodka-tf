variable "cluster_name" {
  description = "The ECS Cluster name to configure Traefik for"
}

variable "cluster_arns" {
  type        = "list"
  description = "The ECS Cluster arns to configure Traefik for"
}

variable "cluster_ids" {
  type        = "list"
  description = "ECS Cluster id"
}

variable "size" {
  default     = 1
  description = "The number of instances of the task definition to place and keep running"
}

variable "vpc_id" {
  description = "The VPC that the cluster is running in"
}

variable "vpc_public_subnet_ids" {
  type        = "list"
  description = "List of public subnet ids to place the loadbalancer in"
}

variable "instance_security_group_id" {
  description = "The security group of the ECS container instances"
}

variable "branches" {
  description = "The Git branches to configure the Traefik for"
  type        = "list"

  default = [
    "master",
    "develop",
  ]
}

variable "kms_master_key_arn" {
  description = "The KMS master key for encryption"
}

variable "cpu" {
  default     = 128
  description = "The CPU limit for this container definition"
}

variable "memory" {
  default     = 128
  description = "The memory limit for this container definition"
}

variable "memory_reservation" {
  default     = 64
  description = "The soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit"
}

variable "port_web" {
  default     = 8080
  description = "The web address port"
}

variable "port_http" {
  default     = 80
  description = "The http port"
}

variable "port_https" {
  default     = 443
  description = "The https port"
}

variable "placement_strategy_type" {
  default     = "spread"
  description = "The type of placement strategy. Must be one of: binpack, random, or spread"
}

variable "placement_strategy_field" {
  default = "attribute:ecs.availability-zone"
}

variable "placement_constraint_type" {
  default     = "distinctInstance"
  description = "The type of constraint. The only valid values at this time are memberOf and distinctInstance."
}

# ! private
variable "_task_log_retention_in_days" {
  default = 7
}

variable "_image" {
  default = "traefik:1.5"
}
