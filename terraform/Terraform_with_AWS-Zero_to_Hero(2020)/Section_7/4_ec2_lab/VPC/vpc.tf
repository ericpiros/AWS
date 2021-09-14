module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-southeast-1a"]
  private_subnets = ["10.0.1.0/24"]
  
  tags = {
    Terraform = "true"
    Environment = "dev"
    Description = "Sample local module"
  }

  create_igw     = false
}
