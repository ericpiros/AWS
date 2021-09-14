variable "ami_id" {
    description = "The AMI ID to use"
    type        = string
    default     = "ami-087c17d1fe0178315" 
}

variable "ec2_instance_type" {
    description = "The EC2 instance type"
    type        = string
    default     = "t2.nano"      
}

variable "ec2_tags" {
    description = "Tags to use on the EC2 instance"
    type        = map(string)
    default     = {
        "Name"        = "Terraform Test"
        "Description" = "Test of local modules"
    }
}

variable "ec2_az" {
    description = "The AZ to place the EC2 instance in"
    type        = string
    default     = "ap-southeast-1a" 
}

variable "ec2_subnet" {
    description = "The subnet ID where we will create the EC2 instance"
    type        = string
}