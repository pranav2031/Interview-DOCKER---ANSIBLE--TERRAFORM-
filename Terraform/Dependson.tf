resource "aws_instance" "myec2"{
    ami ="ami-02d26659fd82cf299"
    instance_type = "t2.micro"

    depends_on = [aws_security_group.mysg]
}

resource "aws_security_group" "mysg" {
    name = "example security group"
    description = "example security group"
}