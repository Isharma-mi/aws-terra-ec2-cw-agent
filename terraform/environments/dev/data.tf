data "aws_ami" "amazon_linux" {
    most_recent = true

    filter {
        name = "name"
        values = ["al*-ami-2*-kernel-*-x86_64"]
    }

    owners = ["137112412989"] # amazon
}