module "vpc" {
  source = "./modules/vpc"
}

module "alb" {
  source = "./modules/alb"

  vpc_id            = module.vpc.aws_vpc
  public_subnet_ids = module.vpc.public_subnet_ids
}
