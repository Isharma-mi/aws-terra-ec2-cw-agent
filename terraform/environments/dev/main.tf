module "cw" {
    source = "../../modules/cw"

    namespace = "${var.env}/ec2-cw-agent-metrics"
}

module "ec2_instance" {
    source = "../../modules/ec2"

    env = var.env

    # EC2 Instance Config
    ami_id = data.aws_ami.amazon_linux.id
    instance_profile_name = module.iam.ec2_instance_profile_name_out
    instance_type = var.ec2_instance_type
    namespace = module.cw.cw_namespace
    
    # SG Config
    sg_egress_cidr_ipv4 = var.ec2_sg_egress_cidr_ipv4
    sg_ingress_cidr_ipv4 = var.ec2_sg_ingress_cidr_ipv4
}

module "iam" {
    source = "../../modules/iam"

    env = var.env

    namespace = module.cw.cw_namespace

}