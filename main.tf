provider "aws" {
  region = "eu-north-1"
}
resource "aws_instance" "name" {
  ami                    = "ami-04cdc91e49cb06165"
  instance_type          = "t3.micro"
  key_name               = "ssr"
  vpc_security_group_ids = ["sg-0e708e3572bc9739d"]
  tags = {
    name = "lms"
  }
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get upgrade -y",
      "sudo apt install python3-pip -y",
      "sudo apt install python3-venv -y",
      "python3 -m venv /home/ubuntu/venv",
      ". /home/ubuntu/venv/bin/activate",
      "git clone https://github.com/gsreddy1870/nlm2.git",
      "cd nlm2",
      "pip install django",
      "sudo apt-get install libmysqlclient-dev -y",
      "sudo apt install pkg-config -y",
      "pip install mysqlclient",
      "pip  install -r requirements.txt",
      "python /home/ubuntu/nlm2/manage.py makemgrations",
      "python /home/ubuntu/nlm2/manage.py migrate",
      "python /home/ubuntu/nlm2/manage.py runserver 0.0.0.0:8000"

    ]
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("ssr.pem")
      host        = self.public_ip
    }

  }

}
