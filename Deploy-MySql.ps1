
docker run -p 3306:3306 -p 33060:33060 --name mysqltest -v /c//temp/franbot:/var/lib/mysql -e MYSQL_RANDOM_ROOT_PASSWORD=yes -e MYSQL_USER=franbot -e MYSQL_PASSWORD=admin12345678 -e MYSQL_DATABASE=frandb -d mysql:8.0.27
mysql -hlocalhost -uroot -prootPassword

#to fix authentication
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'rootPassword';
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'rootPassword';
ALTER USER 'franbot'@'%' IDENTIFIED WITH mysql_native_password BY 'admin12345678'; 