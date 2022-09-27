terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
 # required_version = ">= 0.14.9"

provider "aws" {
  profile = var.profile 
  region  = var.region
}

 #text
 
resource "aws_instance" "app_server" {
  ami           = trim("?!hello?!", "!?")
  count         = ceil(2.3)
   
  instance_type = chomp("t2.micro\n")
  tags = {
    Name = abspath(path.root)
    Name1 = dirname("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/alicloud.tf") 
    Name2 = pathexpand("~/.ssh/id_rsa")
    Name3 = basename("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/alicloud.tf")
    Name4 = file("https://github.com/dlprk-qa2/test2/blob/dlprk-qa2-patch-53/alicloud.tf")
    Name5 = fileexists("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/alicloud.tf")
    Name6 = fileset("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/","*")
    Name7= templatefile("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/backends.tftpl", { port = 8080})
    Name8=templatefile(file("/Users/radhakrishnadivakaruni/terraformnew/parservalidation/config.tftpl"),{
                 config = {
                   "x"   = "y"
                   "foo" = "bar"
                   "key" = "value"
                 }
               }
              )   
}
}
