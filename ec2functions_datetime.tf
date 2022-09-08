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
    Name = formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")
    Name1 = timeadd("2017-11-22T00:00:00Z", "10m") 
    Name2 = timestamp()
    Name3 = formatdate("DD MMM YYYY hh:mm ZZZ", )
    Name4 = formatdat("DD MMM YYYY hh:mm ZZZ","2018-01-02T23:12:01Z" )
    Name5 = timeadd("2017-11-22T00:00:00Z", ) 
    Name6 = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
    
}
}
