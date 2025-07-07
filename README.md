# 🚀 Dockerized Node.js App

Ce projet est une application **Node.js** conteneurisée avec **Docker** et prête à être déployée localement ou sur un serveur.

## 📁 Contenu du dépôt

- `Dockerfile` – Image Docker de l'app Node.js  
- `docker-compose.yml` – (optionnel) Configuration multi-conteneurs  
- `server.js` – Point d’entrée de l’application  
- `package.json` – Dépendances Node.js

## ▶️ Exécution rapide

### 1. Construire l’image

```bash
docker build -t dockerized-nodejs-app .
```
###2.  Lancer le conteneur

```bash
docker run -p 3000:3000 dockerized-nodejs-app
```
