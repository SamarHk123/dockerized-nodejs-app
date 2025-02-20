# Utiliser l'image officielle de Node.js
FROM node:13-alpine

ENV MONGO_INITDB_ROOT_USERNAME=admin  \
  MONGO_INITDB_ROOT_PASSWORD=password 

# Définir le dossier de travail dans le conteneur
WORKDIR /my-app

# Copier les fichiers package.json et package-lock.json avant d'installer les dépendances
COPY package.json package-lock.json ./

# Installer les dépendances
RUN npm install

# Copier tous les fichiers du projet dans le conteneur
COPY . .

# Exposer le port 3000 pour accéder à l'application
EXPOSE 3000

# Commande pour démarrer l'application
CMD ["node", "server.js"]
