# 🏗️ Terraform Labs

Collection d'exercices pratiques Terraform sur AWS.
## 🔧 Prérequis

- [Terraform](https://terraform.io) >= 1.0
- [AWS CLI](https://aws.amazon.com/cli/) configuré
- Compte AWS actif

## 🚀 Utilisation (par lab)
```bash
cd lab-01-key-pair
terraform init
terraform plan
terraform apply
terraform destroy  # Nettoyer après le lab
```

## 📚 Labs réalisés

| # | Sujet | Statut |
|---|-------|--------|
| 01 | Key Pair AWS | ✅ |
| 02 | Instance EC2 | 🔄 En cours |
| 03 | VPC & Subnets | ⏳ À venir |

## ⚠️ Bonnes pratiques

- Toujours faire `terraform destroy` après chaque lab
- Ne jamais committer les fichiers `.tfstate` et `.tfvars`

## 👤 Auteur

**vicah** – [Docker Hub](https://hub.docker.com/r/vicah)
