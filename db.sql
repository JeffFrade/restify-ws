CREATE DATABASE restful_ws;
USE restful_ws;

CREATE TABLE categories(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR(255));

INSERT INTO categories(`name`) VALUES('Jefferson');
INSERT INTO categories(`name`) VALUES('Frade');

CREATE DATABASE restful_ws_test;
USE restful_ws_test;

CREATE TABLE categories(
id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`name`VARCHAR(255));
