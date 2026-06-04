resource "aws_ecs_cluster" "cluster" {
  name = "threatmod-cluster"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_cloudwatch_log_group" "ecs" {
  name              = "/ecs/threatmod"
  retention_in_days = 7
}