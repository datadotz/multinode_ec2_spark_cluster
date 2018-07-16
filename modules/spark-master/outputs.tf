output "elb_name" {
  value = "${aws_elb.single_node_asg_elb.name}"
}

output "elb_dns" {
  value = "${aws_elb.single_node_asg_elb.dns_name}"
}
