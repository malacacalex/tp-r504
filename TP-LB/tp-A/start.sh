docker build -t im-nginx-lb -f Dockerfile .

# Vérification et création des dossiers seulement s'ils n'existent pas
if [ ! -d "shared1" ]; then
    mkdir shared1
    echo "<h1>Hello 1</h1>" > shared1/index.html
fi

if [ ! -d "shared2" ]; then
    mkdir shared2
    echo "<h1>Hello 2</h1>" > shared2/index.html
fi

# Reste du script pour la construction de l'image Docker et le lancement des conteneurs...
docker run -d --name nginx1 \
	-p 81:80 \
	-v "$(pwd)/shared1":"/usr/share/nginx/html" \
	nginx

docker run -d --name nginx2 \
	-p 82:80 \
	-v "$(pwd)/shared2:/usr/share/nginx/html" \
	nginx

docker run -d --name nginx-lb \
	-p 83:80 im-nginx-lb:latest

