module "dev_cluster" {
  source           = "./aks"
  env_name         = "Dev"
  cluster_name     = "WishNote"
  address_space    = ["10.0.0.0/8"]
  address_prefixes = ["10.240.0.0/16"]
}

module "uat_cluster" {
  source           = "./aks"
  env_name         = "UAT"
  cluster_name     = "WishNote"
  address_space    = [".0.0.0/8"]
  address_prefixes = ["11.240.0.0/16"]
}
