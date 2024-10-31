# Projet Terraform - Déploiement d'une Infrastructure EC2 avec EBS, IP publique et Security Group

Ce projet utilise Terraform pour déployer une instance EC2 basée sur la dernière version de **Ubuntu Bionic** en intégrant un volume EBS, une IP publique et un Security Group.
L'installation de Nginx et la sauvegarde de l'IP publique de l'instance dans un fichier `ip_ec2.txt`sont effectuées lors du déploiement de l'instance.

## Structure du projet

Le projet est structuré en 4 modules et inclut un dossier `app` pour gérer le déploiement. Ci-dessous les 4 modules principales :

- **Module EC2** <<ec2_module>>  : Crée une instance EC2 avec une IP publique et un volume EBS attaché.
- **Module EBS** <<ebs_module>> : Crée un volume EBS dont la taille est paramétrable.
- **Module EIP** <<eip_module>> : Associe une IP publique à l'instance EC2 et au groupe de sécurité.
- **Module Security Group** <<sg_module>> : Définit un groupe de sécurité couvrant les ports 80 (HTTP) et 443 (HTTPS).

## Fonctionnalités

1. **Module EC2**
   - Crée une instance EC2 utilisant la dernière version de **Ubuntu Bionic**.
   - Attache un volume EBS
   - Associe une IP publique.
   - Variabilisation des attributs pour une flexibilité dans lors du déploiement.

2. **Module EBS**
   - Crée un volume EBS avec une taille configurable.
   - Variabilisation des attributs pour une flexibilité dans lors du déploiement.
   
3. **Module EIP**
   - Crée une IP publique attachée à l'instance EC2 et associée au groupe de sécurité.

4. **Module Security Group**
   - Crée un groupe de sécurité autorisant les connexions sur les ports 80 et 443.
   - Variabilisation des attributs pour une flexibilité dans lors du déploiement.

5. **Dossier `app`**
   - S'appuie sur les 4 modules pour déployer l'infrastructure EC2.
   - Les variables sont surchargées pour un déploiement dynamique de l'infrastructure.

6. **Installation de Nginx**
   - Une fois le déploiement terminé, Nginx est installé automatiquement sur l'instance EC2.
   - L'IP publique de l'instance est sauvegardée dans un fichier nommé `ip_ec2.txt`.

## Prérequis

- Création et accès à un compte AWS
- Création d'un acces_key et secret_key sur AWS
- Les bases de Terraform

## Utilisation

1. **Cloner le dépôt :**

   ```bash
   git clone https://github.com/Milane225/mini-projet-bootcamp-terraform.git
   cd mini-projet-bootcamp-terraform
