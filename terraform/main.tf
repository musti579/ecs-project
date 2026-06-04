module "vpc" {
  source = "./modules/vpc"
}


module "alb" {
  source = "./modules/alb"

  vpc_id            = module.vpc.aws_vpc
  public_subnet_ids = module.vpc.public_subnet_ids
}

module "ecs" {
  source = "./modules/ecs"

  ecs_task_execution_role_arn = module.iam.ecs_execution_role_arn

  vpc_id                = module.vpc.aws_vpc
  public_subnet_ids     = module.vpc.public_subnet_ids
  alb_security_group_id = module.alb.alb_security_group_id
  target_group_arn      = module.alb.target_group_arn
}

module "iam" {
  source = "./modules/iam"
}
