# maintaining separate files for the output files so we can see all the output at one place.
# this is the following example will give the output of the terraform file and the additional changes it is going to create in the cloud.
# to see the following output we can run command-  terraform output
output "instance_ip_addr" {
  value = aws_instance.myserver.private_ip
}

output "public_ip_addr" {
  value = aws_instance.myserver.private_ip
}