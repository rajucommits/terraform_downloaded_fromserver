variable "region_name" {}
variable "mybucket" {}
variable "cidrvpc" {}
variable "cidrsubnet" {}
variable "amiid" {}
variable "instancetype" {}
variable "keypub" {}
variable "app_name" {}

module "app1_s3" {
	source = "/home/ec2-user/mymodules/s3/"
	region_name = var.region_name
	mybucket= var.mybucket
}

module "app1_vpc" {
	source = "/home/ec2-user/mymodules/vpc/"
	region_name = var.region_name
	myvpcname = "${var.app_name}-vpc"
	mycidrvpc = var.cidrvpc
	myigwname = "${var.app_name}-igw"
	myroutename = "${var.app_name}-route"
	mycidrsubnet = var.cidrsubnet
	mysubnetname = "${var.app_name}-subnet"
	mysgname = "${var.app_name}-sg"
}

module "app1_ec2" {
	source = "/home/ec2-user/mymodules/ec2/"
	region_name = var.region_name
	myami = var.amiid
	myinstancetype = var.instancetype
	myec2name = "${var.app_name}-servername"
	mykey = "${var.app_name}-keyname"
	mykey_pub = var.keypub
	sub_id = module.app1_vpc.subnet_id
	secgrp_id = module.app1_vpc.sec_grp_id
}
