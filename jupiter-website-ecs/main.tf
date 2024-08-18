# configure aws provider
provider "aws"{
    region = var.region
    profile = "KehindeAdmin"
}

# create vpc
module "vpc" {
  source                      = "../modules/vpc"
  region                      = var.region
  project_name                = var.project_name
  vpc_cidr                    = var.vpc_cidr
  public_subnet_az1_cidr      = var.public_subnet_az1_cidr
  public_subnet_az2_cidr      = var.public_subnet_az2_cidr
  private_app_az1_cidr        = var.private_app_az1_cidr
  private_app_az2_cidr        = var.private_app_az2_cidr
  private_data_az1_cidr       = var.private_data_az1_cidr
  private_data_az2_cidr       = var.private_data_az2_cidr
}
