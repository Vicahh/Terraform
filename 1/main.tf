# ============================================================
# CRÉATION D'UNE KEY PAIR AWS POUR ACCÈS SSH AUX INSTANCES EC2
# ============================================================

# --- Étape 1 : Génération de la clé privée/publique en local ---
resource "tls_private_key" "datacenter_kp" {
  algorithm = "RSA"   
  rsa_bits  = 2048    
}

# --- Étape 2 : Enregistrement de la clé publique sur AWS ---
resource "aws_key_pair" "datacenter_kp" {
  key_name   = "datacenter-kp"                                    # Nom de la key pair dans la console AWS
  public_key = tls_private_key.datacenter_kp.public_key_openssh  # Référence la clé publique générée à l'étape 1
}

# --- Étape 3 : Sauvegarde de la clé privée en local ---
resource "local_file" "private_key" {
  content  = tls_private_key.datacenter_kp.private_key_pem  # Contenu de la clé privée au format PEM
  filename = "/home/bob/datacenter-kp.pem"                  # Chemin de sauvegarde sur la machine locale
  file_permission = "0400"                                   # Permission lecture seule pour le propriétaire
}