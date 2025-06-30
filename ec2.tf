resource "aws_instance" "this" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  vpc_security_group_ids = var.sg_ids
  
  tags = var.tags
}
validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Valid values for instance_type are t3.micro, t3.small, t3.medium"
  } 

