resource "aws_instance" "my_instance" {
    ami                 = "ami-0ab4d1e9cf9a1215a"
    instance_type       = "t2.micro"  

    tags                = {
        Name        = "MyTFInstance"
        Provisioner = "Terraform"
        }  

    availability_zone   = "us-east-1a"
    iam_instance_profile = "terraform-ec2-role"
} 
