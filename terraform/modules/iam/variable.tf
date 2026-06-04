variable "ecs_execution_role_name" {
  default = "ecsTaskExecutionRole"
}
variable "ecs_task_execution_policy_arn" {
  default = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}

