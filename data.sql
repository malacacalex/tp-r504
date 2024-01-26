CREATE DATABASE IF NOT EXISTS dolibarr;
CREATE USER 'dolibarr'@'localhost' IDENTIFIED BY 'YourStrongPasswordHere';
GRANT ALL PRIVILEGES ON dolibarr.* TO 'dolibarr'@'localhost';
FLUSH PRIVILEGES;

