output "subnet_id" {
	value = aws_subnet.mysubnet.id
}

output "sec_grp_id" {
	value = aws_security_group.mysg.id
}
