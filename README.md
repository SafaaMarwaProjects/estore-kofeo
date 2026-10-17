[🇫🇷 Français](README.md) | [🇬🇧 English](README.en.md)
# ☕ Kofeo – Boutique en ligne du café

Bienvenue sur **Kofeo**, une boutique en ligne dédiée à l’univers du café :  
machines, grains, capsules et accessoires. Ce projet est un **site e‑commerce complet** développé avec **Spring Boot (backend)** et **React (frontend)**, simulant le parcours utilisateur d’un vrai magasin en ligne.

---

## 📍 Fonctionnalités principales

- **Accueil** : présentation de la marque et mise en avant des catégories.  
- **Catalogue** : navigation par catégories (machines, capsules, grains, accessoires).  
- **Panier** : ajout, suppression et mise à jour des produits.  
- **Paiement simulé** : formulaire de livraison et paiement (aucun paiement réel).  
- **Avis produit** : possibilité de laisser un avis uniquement après achat validé.  
- **Avis site** : demande d’évaluation de l’expérience après confirmation de commande.  
- **Profil utilisateur** : gestion des informations personnelles et suivi des commandes.  
- **Authentification** : inscription et connexion sécurisées.  

---

## 🖥️ Aperçu du projet

### 🏠 Page d’accueil
![Accueil](https://drive.google.com/uc?id=1wj3VSpzVuDId8lzSXPB_Hu8z2f225UeS)

### 🔐 Authentification
![Choix Auth](https://drive.google.com/uc?id=1etlGNz4NXJjzc8c5zncW1xh_thMQb13T)  
![Connexion](https://drive.google.com/uc?id=1oc3KplNsnwD6XoCRaM4QXW04kfMz42Xc)  
![Inscription](https://drive.google.com/uc?id=1vowVuwZlqk9ctQRx-Y9u-vyQdHW3hqLw)

### 🛍️ Catalogue & Produits
![Catalogue](https://drive.google.com/uc?id=1Rqa2OtZbLbA_oWAf9qTeXB4iU1ommOoW)  
![Produit](https://drive.google.com/uc?id=1M9nvWRSz3khMfOpzuZCjS0vQ7BxdDXVA)

### 🛒 Panier
![Panier vide](https://drive.google.com/uc?id=1M6oWTGO4IEMrVu66UJzQNOlZ4EphMmxI)  
![Panier plein](https://drive.google.com/uc?id=1amxSSvpy6o7YPRp8qtDwzVa6F5L6-62l)

### 💳 Paiement
![Adresse livraison](https://drive.google.com/uc?id=1w2KqM_8HAIObFJVoi_QIoT_Sc0U5EPDV)  
![Formulaire paiement](https://drive.google.com/uc?id=1Ryu4jOENF0BI7jR0mUB5S3ssGtcfMyT1)

### 📦 Confirmation de commande
![Confirmation](https://drive.google.com/uc?id=1ITJEL4--F39rn1Q906a-l_yGroa443ST)

### ⭐ Avis
![Avis écrit](https://drive.google.com/uc?id=1AA-4C5ozxvHuoevdzwEWF8VSuRx6rQwm)  
![Affichage avis](https://drive.google.com/uc?id=17MOcz5Hwe0s0KUojsDU8CTuHTlf0Y6rs)

### Profil utilisateur
![Profil](https://drive.google.com/uc?id=1EuNGgNl4PvzIcJBfYrmR95kcSb23AV-r)

---

## 🔧 Technologies utilisées

- **Backend** : Spring Boot (REST API, gestion des entités : clients, produits, commandes, avis)  
- **Frontend** : React (SPA, composants modulaires, Context API pour la gestion d’état)  
- **Base de données** : MySQL (produits, utilisateurs, commandes, avis)  
- **Architecture** : séparation claire frontend ↔ backend via API REST  

---
## 👥 Équipe

Ce projet a été réalisé en binôme par :

- 👩‍💻 [Safaa Mounkid](https://github.com/SafaaM1234)
- 👨‍💻 [Marwa Maqsousi](https://github.com/Marwa-Maqsoudi)

---

## 📂 Accès au projet complet
Le projet est également disponible sur Google Drive :  
👉 [Lien vers le projet complet](https://drive.google.com/uc?export=download&id=1olFv2bevJfNfbICweKj2APibXSm-3jcI)

---
## ⚙️ Installation
### Prérequis
Avant de lancer le projet, assurez-vous d'avoir installé :
- **Java JDK**
- **Maven**
- **Node.js et npm**
- **MySQL**
- **Git**

###  1. Cloner le dépôt
Clonez le repository :
```bash
git clone https://github.com/SafaaM1234/estore-kofeo.git
```

Accédez au dossier du projet :
```bash 
cd estore-kofeo
```
### 2. Installation du Frontend

Accédez au dossier du frontend :
```bash 
cd estore_frontend
```

Installez les dépendances :
```bash 
npm install
```

Lancez l'application React :
```bash 
npm start
```

Le frontend sera normalement accessible à l'adresse :
```bash 
http://localhost:3000
```
### 3. Configuration de la base de données

Kofeo utilise une base de données MySQL pour stocker les informations sur les produits, les catégories, le stock, les comptes utilisateurs, les paniers, les commandes, les profils et les avis.

#### ▣ Prérequis
- MySQL 8.0 ou version ultérieure
- phpMyAdmin (facultatif, pour faciliter la gestion de la base de données)

#### ▣ Importation de la base de données

1. Démarrez MySQL à l'aide de votre environnement local (par exemple, WampServer).
2. Ouvrez phpMyAdmin à l'adresse `http://localhost/phpmyadmin`.
3. Créez une base de données nommée `estore`.
4. Sélectionnez la base de données `estore`, puis ouvrez l'onglet **Importer**.
5. Importez le fichier SQL situé dans `database/estore_kofeo.sql`.

#### ▣ Configuration de la connexion à la base de données

Configurez la connexion à MySQL dans le backend Spring Boot en utilisant vos identifiants locaux. Assurez-vous que le nom de la base de données, le nom d'utilisateur, le mot de passe et le port correspondent à votre configuration MySQL.

Le fichier SQL contient la structure de la base de données ainsi que des données d'exemple destinées à la démonstration du projet.

### 4. Installation du Backend
Ouvrez le projet estore_backend avec IntelliJ IDEA ou un autre IDE compatible avec Java.

Assurez-vous que :

- Java JDK est installé.
- Maven est disponible.
- MySQL est installé et en cours d'exécution.
- La configuration de la base de données est correctement définie.

Configurez la base de données MySQL selon la configuration du projet Spring Boot.

Lancez ensuite l'application Spring Boot.

Le backend sera normalement accessible à l'adresse :

```bash 
http://localhost:8080
```


