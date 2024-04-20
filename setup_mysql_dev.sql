-- setup database and user for AirBnB project
-- how to use it: cat setup_mysql_dev.sql | mysql -hlocalhost -uroot -p
CREATE DATABASE IF NOT EXISTS artall_db;
CREATE USER IF NOT EXISTS 'artall_user'@'localhost' IDENTIFIED BY 'artall_pwd';
GRANT ALL PRIVILEGES ON artall_db.* TO 'artall_user'@'localhost';
GRANT SELECT ON performance_schema.* TO 'artall_user'@'localhost';
