provider "aws"{
    region ="ap-south-1"
}
##############
#count
##############
resource "aws_instance" "myec2"{
    count = 3
    ami = "ami-0c02fb55956c7d316"
    instance_type = "t2.micro"
    tags={
        Name = "myinstance${count.index +1  }"
    }
}