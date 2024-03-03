variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
  default     = "nginx-frontend"
}

variable "enable_alb" {
  description = "Enable or not the ALB"
  type        = bool
  default     = false
}

