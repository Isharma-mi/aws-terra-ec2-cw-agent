module "ec2_instance" {
    source = "../../modules/ec2"
    
    # EC2 Instance Config
    ec2_ami_id = data.aws_ami.amazon_linux.id
    ec2_instance_type = "t3.micro"
    ec2_tag_name = "dev-EC2Instance"
    
    # SG Config
    ec2_sg_name = "dev-EC2Instance-SG"
    ec2_sg_egress_cidr_ipv4 = "0.0.0.0/0"
    ec2_sg_ingress_cidr_ipv4 = "0.0.0.0/0"
}
