provider "aws" {
    region = "ap-south-1"
}
locals{
    ec2 ={
        "vm1" = { ami_id="ami-02d26659fd82cf299", instance_type ="t2.micro", Name = "Instance-1" }
        "vm2" = { ami_id="ami-02d26659fd82cf299", instance_type ="t2.micro", Name = "Instance-2" }
        "vm3" = { ami_id="ami-02d26659fd82cf299", instance_type ="t2.micro", Name = "Instance-3" }
    }
}


resource "aws_instance" "myec2" {
    for_each = local.ec2
    instance_type = each.value.instance_type
    ami = each.value.ami_id

    tags = {
        Name = "instance - ${each.value.Name}"
    }
  
}