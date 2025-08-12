resource "aws_instance" "web_server" {
    ami = var.ec2_ami_id
    instance_type = var.ec2_instance_type
    user_data = <<-EOF
        #!/bin/bash
        sudo yum -y install amazon-cloudwatch-agent
    EOF
    vpc_security_group_ids = [aws_security_group.web_server_sg.id]
    
    tags = {
        name = var.ec2_tag_name
    }

}

resource "aws_security_group" "web_server_sg" {
    name = var.ec2_sg_name

    tags = {
        name = var.ec2_sg_name
    }
}

resource "aws_vpc_security_group_egress_rule" "web_server_sg_egress_ssh" {
    security_group_id = aws_security_group.web_server_sg.id
    
    cidr_ipv4 = var.ec2_sg_egress_cidr_ipv4
    from_port = 22
    ip_protocol = 6
    to_port = 22
}

resource "aws_vpc_security_group_egress_rule" "web_server_sg_egress_https" {
    security_group_id = aws_security_group.web_server_sg.id

    cidr_ipv4 = var.ec2_sg_egress_cidr_ipv4
    from_port = 443
    ip_protocol = 6
    to_port = 443
}

resource "aws_vpc_security_group_ingress_rule" "web_server_sg_ingress" {
    security_group_id = aws_security_group.web_server_sg.id

    cidr_ipv4 = var.ec2_sg_ingress_cidr_ipv4
    from_port = 22
    ip_protocol = 6
    to_port = 22
}