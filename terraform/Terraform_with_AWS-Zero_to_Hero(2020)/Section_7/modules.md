# Terraform Modules

Now modules is quite a big topic. It is important to note that the course only looks at local modules. Local modules are ones that you create locally. Terraform has an online module registry that can be used in place of local modules. You can find the AWS module registry [here](https://registry.terraform.io/providers/hashicorp/aws/latest).  

First lets go over how to use modules from the Terraform registry. Lets set up a new VPC using the [VPC module](https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest) in the registry.  

To use a module you need to declare it in your configuration:  
```
module "<name>" {
    source = "<path to module>"
    version = "<version number>"

    <property> = <value>
    ...
    <property> = <value>
}
```

Version number is optional. Technically you only need to declare the source and the required variables for the module to start using it. Source paths follow a certain naming convention for those in the registry, these are outlined under the section "Module best practice" located [here](https://learn.hashicorp.com/tutorials/terraform/module?in=terraform/modules).  

For our purpose we will set our source as **"terraform-aws-modules/vpc/aws"** as indicated in the documentation for the VPC module. Lets try out the sample below. I will be creating a new VPC in ap-southeast-1.  

```
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}
```




