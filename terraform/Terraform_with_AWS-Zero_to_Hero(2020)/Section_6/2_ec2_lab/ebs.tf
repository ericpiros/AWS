resource "aws_ebs_volume" "my_ebs_volume" {
    availability_zone   = "us-east-1a"
    size                = 8

    tags                = {
        Name            = "my_ebs_volume"
        Description     = "Attach to my instance"
    }
}
resource "aws_volume_attachment" "my_instance_my_volume" {
    device_name     = "/dev/sdh"
    volume_id       = aws_ebs_volume.my_ebs_volume.id
    instance_id     = aws_instance.my_instance.id
}