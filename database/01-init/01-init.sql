CREATE DATABASE IF NOT EXISTS store;

USE store;

CREATE TABLE IF NOT EXISTS user(
    id INT(6) NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS shop(
    id INT(6) NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS product(
    id INT(6) NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(30) NOT NULL,
    quantity INT(6) NOT NULL,
    enabled BOOLEAN NOT NULL,
    shop_id INT(6) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (shop_id) REFERENCES shop(id)
);

CREATE TABLE IF NOT EXISTS pre_order(
    id INT(6) NOT NULL AUTO_INCREMENT,
    target_price DECIMAL(6,2) NOT NULL,
    quantity int(6) NOT NULL,
    product_id INT(6) NOT NULL,
    user_id INT(6) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (user_id) REFERENCES user(id)
);