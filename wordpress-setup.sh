#! /bin/bash
amazon-linux-extras install php7.2 -y
yum install httpd mysql -y
wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
mv wordpress /var/www/html
chown -R  apache: /var/www/html/wordpress
systemctl enable --now httpd