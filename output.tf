
output "name" {
    value = "kenneth"
}

output "lastname" {
    value = "valenzuela"
}
resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "instance_id" {
    value = "${aws_instance.web.id}"
}


    #   id:                           <computed>
    #   ami:                          "ami-0323c3dd2da7fb37d"
    #   arn:                          <computed>
    #   associate_public_ip_address:  <computed>
    #   availability_zone:            <computed>
    #   cpu_core_count:               <computed>
    #   cpu_threads_per_core:         <computed>
    #   ebs_block_device.#:           <computed>
    #   ephemeral_block_device.#:     <computed>
    #   get_password_data:            "false"
    #   host_id:                      <computed>
    #   instance_state:               <computed>
    #   instance_type:                "t2.micro"
    #   ipv6_address_count:           <computed>
    #   ipv6_addresses.#:             <computed>
    #   key_name:                     <computed>
    #   metadata_options.#:           <computed>
    #   network_interface.#:          <computed>
    #   network_interface_id:         <computed>
    #   password_data:                <computed>
    #   placement_group:              <computed>
    #   primary_network_interface_id: <computed>
    #   private_dns:                  <computed>
    #   private_ip:                   <computed>
    #   public_dns:                   <computed>
    #   public_ip:                    <computed>
    #   root_block_device.#:          <computed>
    #   security_groups.#:            <computed>
    #   source_dest_check:            "true"
    #   subnet_id:                    <computed>
    #   tags.%:                       "1"
    #   tags.Name:                    "HelloWorld"
    #   tenancy:                      <computed>
    #   volume_tags.%:                <computed>
    #   vpc_security_group_ids.#:     <computed>





