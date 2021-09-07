CREATE DATABASE IF NOT EXISTS my_web_db;

USE my_web_db;

CREATE TABLE my_web_db.users
(
	user_id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    email_address VARCHAR(100),
    first_name VARCHAR(45),
    last_name VARCHAR(45)
);

CREATE TABLE my_web_db.products
(
	product_id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    product_name VARCHAR(45)
);

CREATE TABLE my_web_db.downloads
(
	download_id INT PRIMARY KEY NOT NULL UNIQUE AUTO_INCREMENT,
    user_id INT,
    download_date DATETIME,
    filename VARCHAR(50),
    product_id INT,
    CONSTRAINT product_fk_downloads FOREIGN KEY (product_id) REFERENCES products (product_id),
    CONSTRAINT users_fk_downloads FOREIGN KEY (user_id) REFERENCES users (user_id)
);
