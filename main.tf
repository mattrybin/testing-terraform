provider "aws" {
  access_key = "AKIAU4GK7N7AZUMIF25N"
  secret_key = "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"
  region     = var.region
}

module "ECS" {
	source = "./modules/ECS"

  key_name = var.key_name
  ami = var.ami
  instance_type = var.instance_type
  user = var.user
  private_key_path = var.key_private_path
}

module "security" {
	source = "./modules/security"

  key_name = "${var.key_name}"
  public_key_path = "${var.key_public_path}"
}

resource "aws_eip" "ip" {
  vpc      = true
  instance = module.ECS.id
}
