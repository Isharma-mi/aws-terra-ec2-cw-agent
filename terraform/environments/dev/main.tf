module "ec2_instance" {
    source = "../../modules/ec2"

    env = var.env

    # EC2 Instance Config
    ec2_ami_id = data.aws_ami.amazon_linux.id
    ec2_instance_profile_name = module.iam.iam_ec2_instance_profile_name
    ec2_instance_type = var.ec2_instance_type
    
    # SG Config
    ec2_sg_egress_cidr_ipv4 = var.ec2_sg_egress_cidr_ipv4
    ec2_sg_ingress_cidr_ipv4 = var.ec2_sg_ingress_cidr_ipv4
}

module "iam" {
    source = "../../modules/iam"

    env = var.env
}