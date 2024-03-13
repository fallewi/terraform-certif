variable "image_id" {
  type        = string
  description = "Cette variable me permet de passer l'id de l'ami à utiliser pour utiliser"
  default     = "ami-026ebd4cfe2c043b2"
}
variable "key_name" {
  type        = string
  description = "Cette variable me permet de passer le nom de la keypair pour mon instance"
  default     = "lewis_key"
}

variable "instance_type" {
  type        = string
  description = "Cette variable me permet de définir un template à utiliser pour mon instance"
  default     = "t2.nano"
}

variable "tag" {
  type        = string
  description = "Cette variable me permet de définir un tag à utiliser pour mon instance"
  default     = "lewis"
}
