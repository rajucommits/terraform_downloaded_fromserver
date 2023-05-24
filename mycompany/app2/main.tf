variable "region_name" {
	default = "us-east-1"
}

variable "mybucket" {
	default= "terramodapr12app2"
}

module "app2_s3" {
	source = "/home/ec2-user/mymodules/s3/"
	region_name = var.region_name
	mybucket= var.mybucket
}

module "app2_vpc" {
	source = "/home/ec2-user/mymodules/vpc/"
	region_name = var.region_name
	myvpcname = "app2-vpc"
	mycidrvpc = "10.10.0.0/16"
	myigwname = "app2-igw"
	myroutename = "app2-route"
	mycidrsubnet = "10.10.10.0/24"
	mysubnetname = "app2-subnet"
	mysgname = "app2-sg"
}
