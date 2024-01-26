sudo apt update -y && sudo apt upgrade -y
sudo apt-get -y install apt-transport-https lsb-release ca-certificates curl vim
sudo curl -sSLo /usr/share/keyrings/deb.sury.org-php.gpg https://packages.sury.org/php/apt.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/deb.sury.org-php.gpg] https://packages.sury.org/php/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/php.list'
sudo apt update -y && sudo apt upgrade -y
sudo apt -y install php8.0-fpm php8.0-mbstring php8.0-gd php8.0-curl php8.0-xml php8.0-intl php8.0-imap php8.0-zip php8.0-mysql nginx mariadb-server
sudo mysql < data.sql
sudo mv default /etc/nginx/sites-enabled/default
cd /var/www/html/
sudo wget https://sourceforge.net/projects/dolibarr/files/Dolibarr%20ERP-CRM/18.0.4/dolibarr-18.0.4.tgz
sudo tar xvfz dolibarr-18.0.4.tgz
sudo mv dolibarr-18.0.4/htdocs dolibarr
sudo systemctl restart nginx
sudo ip a
sudo chown www-data:www-data dolibarr/conf/

