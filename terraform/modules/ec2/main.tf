resource "aws_instance" "web_server" {
    ami = var.ec2_ami_id
    instance_type = var.ec2_instance_type
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

resource "aws_vpc_security_group_egress_rule" "web_server_sg_egress" {
    security_group_id = aws_security_group.web_server_sg.id
    
    cidr_ipv4 = "0.0.0.0/0"
    from_port = 22
    ip_protocol = 6
    to_port = 22
}

resource "aws_vpc_security_group_ingress_rule" "web_server_sg_ingress" {
    security_group_id = aws_security_group.web_server_sg.id

    cidr_ipv4 = "0.0.0.0/0"
    from_port = 22
    ip_protocol = 6
    to_port = 22
}