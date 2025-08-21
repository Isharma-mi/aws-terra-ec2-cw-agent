#!/bin/bash
sudo yum -y install amazon-cloudwatch-agent
mkdir /home/ec2-user/aws-terra-ec2-cw-agent-config
cat > /home/ec2-user/aws-terra-ec2-cw-agent-config/infrastructure.json <<'EOF'
${config_json}
EOF
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c file:/home/ec2-user/aws-terra-ec2-cw-agent-config/infrastructure.json