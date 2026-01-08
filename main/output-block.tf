output "ec2_public_lab_instance_ip" {
  value = aws_instance.ec2-lab-instance-lab-2880-lab-create.public_ip
  depends_on = [ aws_security_group_rule.allow_tls_ipv4]
}