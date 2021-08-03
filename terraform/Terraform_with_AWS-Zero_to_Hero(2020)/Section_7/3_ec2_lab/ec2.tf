resource "aws_instance" "imported_instance" {
    ami                 = "ami-0c2b8ca1dad447f8a"
    instance_type       = "t2.nano"

    tags                = {
        Name            = "Managed Instance"
    }  
} 