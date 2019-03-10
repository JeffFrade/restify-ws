CREATE DATABASE restful_ws;
USE restful_ws;

CREATE TABLE categories(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR(255));

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(255) NOT NULL,
`password` VARCHAR(40) NOT NULL);

INSERT INTO categories(`name`) VALUES('Jefferson');
INSERT INTO categories(`name`) VALUES('Frade');

INSERT INTO users(email, `password`) VALUES('jefferrson.frade@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b');
-- Senha do user = 123456

CREATE DATABASE restful_ws_test;
USE restful_ws_test;

CREATE TABLE categories(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR(255));

CREATE TABLE users(
id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(255) NOT NULL,
`password` VARCHAR(40) NOT NULL);
