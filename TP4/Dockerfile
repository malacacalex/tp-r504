# Utilisation de l'image de base Debian 11
FROM debian:11

# Mise à jour et mise à niveau des paquets
RUN apt-get update -y && apt-get upgrade -y

# Installation des paquets Debian
RUN apt-get install -y build-essential pkg-config python-dev python3-pip default-libmysqlclient-dev

# Mise à jour de pip
RUN pip3 install --upgrade pip

# Installation des paquets Python via pip
RUN pip3 install flask-mysqldb mysql-connector-python

# Création du répertoire /srv/templates
RUN mkdir -p /srv/templates

# Copie du fichier index.html dans /srv/templates
COPY index.html /srv/templates/

# Copie du fichier app1.py dans /srv/
COPY app1.py /srv/

# Commande de lancement de Flask avec autorisation des connexions depuis l'extérieur
CMD ["flask", "--app", "/srv/app1", "run", "--host=0.0.0.0"]

