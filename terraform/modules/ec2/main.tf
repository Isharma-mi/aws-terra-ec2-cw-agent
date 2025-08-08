resource "aws_instance" "web_server" {
    ami = var.ec2_ami_id
    instance_type = var.ec2_instance_type

    tags = {
        name = "TestInstance"
    }
}