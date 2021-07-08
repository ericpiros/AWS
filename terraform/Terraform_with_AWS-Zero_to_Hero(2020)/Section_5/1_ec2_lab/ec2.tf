resource "aws_instance" "MyFirstEC2Instance_from_Terraform" {
  ami = "ami-0ab4d1e9cf9a1215a"
  instance_type = "t2.micro"
  tags = {
      Name = "Created from Terraform"
  }
  user_data = <<EOF
            #!/bin/bash
            yum update -y
            yum install -y httpd
            systemctl start httpd.service
            systemctl enable httpd.service
            echo "Hi Friend , I am $(hostname -f)" > /var/www/html/index.html
            EOF
  iam_instance_profile = "terraform-ec2-role"
}