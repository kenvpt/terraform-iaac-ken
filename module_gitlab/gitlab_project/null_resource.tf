resource "null_resource" "gitlab" {
  provisioner "remote-exec" {

    connection {
    type = "ssh"
    user = "centos"
    private_key = "${file(var.private_key_path)}"
    host = "${aws_instance.my_instance.public_ip}"
  }
  
    inline = [
        "sudo yum install -y curl policycoreutils-python openssh-server",
        "sudo systemctl enable sshd",
        "sudo systemctl start sshd",
        "sudo yum install firewalld -y",
        "sudo systemctl enable firewalld",
        "sudo systemctl start firewalld",
        "sudo firewall-cmd --permanent --add-service=http",
        "sudo firewall-cmd --permanent --add-service=https",
        "sudo systemctl reload firewalld",
        "sudo yum install postfix -y",
        "sudo systemctl enable postfix",
        "sudo systemctl start postfix",
        "curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.rpm.sh | sudo bash",
        "sudo EXTERNAL_URL='http://gitlab.localdomain' yum install -y gitlab-ce",
        "sudo setenforce 0"
    ]
  }
}