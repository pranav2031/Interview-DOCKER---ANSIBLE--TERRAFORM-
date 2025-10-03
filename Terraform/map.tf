resource "aws_instance" "myec2"{
    ami = "ami-02d26659fd82cf299"
    instance_type = "t2.micro"
    tags = var.tags_value
}

variable "tags_value"  {
    description = "Map of tags to assign to the resources"
    type = map(string)
    default ={
        Environment = "DEV"
        Team = "Devops"
        Batch= "26"

    }
}