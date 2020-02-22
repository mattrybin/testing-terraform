resource "aws_instance" "example" {
  key_name      = var.key_name
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "tf-example"
  }

  connection {
    type        = "ssh"
    user        = var.user
    private_key = file(var.private_key_path)
    host        = self.public_ip
  }
  provisioner "remote-exec" {
    inline = [
      "sudo amazon-linux-extras enable nginx1.12",
      "sudo yum -y install nginx",
      "sudo systemctl start nginx"
    ]
  }
}