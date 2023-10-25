#!/bin/bash


# Nom de l'image Docker
IMAGE_NAME="im-tp4"

# Nom du conteneur
CONTAINER_NAME="tp4-app"

# Réseau auquel connecter le conteneur
NETWORK="net-tp4"

# Port de Flask à publier (5000)
FLASK_PORT="5000"

# Vérifier si le conteneur existe déjà et le supprimer s'il est en cours d'exécution
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Arrêt du conteneur $CONTAINER_NAME en cours..."
    docker stop $CONTAINER_NAME
    echo "Suppression du conteneur $CONTAINER_NAME en cours..."
    docker rm $CONTAINER_NAME
fi

# Lancer un nouveau conteneur en spécifiant le réseau et le port à publier
docker run -d --name $CONTAINER_NAME --network $NETWORK -p $FLASK_PORT:$FLASK_PORT $IMAGE_NAME

echo "Le conteneur $CONTAINER_NAME a été lancé et est connecté au réseau $NETWORK."
echo "Le port $FLASK_PORT de Flask est publié sur le port $FLASK_PORT à l'extérieur."

