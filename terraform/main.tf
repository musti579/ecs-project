module "vpc" {
  source = "./modules/vpc"
}

module "alb" {
  source = "./modules/alb"
}