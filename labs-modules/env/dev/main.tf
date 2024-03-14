

module "servers" {
  source = "../../modules/ec2"
  sg = ["${module.security.sg_id}"]
    }

 module "ip" {
   source = "../../modules/eip"

       }
  module "security" {
    source = "../../modules/sg"

        }

resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.servers.instance_id
    allocation_id = module.ip.eip_id
    }

