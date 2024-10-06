module "network" {

  source              = "./network"
  cidr_block          = var.cidr_block
  private_subnet_cidr = var.private_subnet_cidr
  public_subnet_cidr  = var.public_subnet_cidr

}

module "security" {
  source = "./security"
vpc_id = module.network.vpc-id
cidr_block = var.cidr_block


}

module "compute" {

  source = "./compute"
  ami_id = var.ami_id
  instance_type = var.instance_type
  public_SG = module.security.public
  private_SG = module.security.private
  public-subnet = module.network.public-subnet
  private-subnet = module.network.private-subnet

}