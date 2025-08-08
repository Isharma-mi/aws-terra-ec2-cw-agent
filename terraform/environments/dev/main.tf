module "ec2_instance" {
    source = "../../modules/ec2"
    ec2_ami_id = data.aws_ami.amazon_linux.id
    ec2_instance_type = "t3.micro"

    ec2_tag_name = "dev-EC2Instance"
}