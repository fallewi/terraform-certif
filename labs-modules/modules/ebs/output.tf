
output "ebs_id" {

  value       = aws_ebs_volume.ebs.id
  description = "Permet de retourner l'ID de l'EBS"

}
