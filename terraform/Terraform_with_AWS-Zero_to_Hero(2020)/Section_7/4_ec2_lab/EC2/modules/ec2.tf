resource "aws_instance" "my_instance" {
    ami                 = var.ami_id
    instance_type       = var.ec2_instance_type  

    tags                = var.ec2_tags

    availability_zone   = var.ec2_az
    subnet_id           = var.ec2_subnet
}