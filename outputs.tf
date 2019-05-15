output "fakecompany_sharedservices_security_group_id" {
  value = "${aws_security_group.shared-services.id}"
}
output "fakecompany_sharedservices_security_group_name" {
  value = "${aws_security_group.shared-services.name}"
}
