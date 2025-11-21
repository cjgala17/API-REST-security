CREATE DATABASE security_db;
USE security_db;

CREATE TABLE users (
    username VARCHAR(50) NOT NULL PRIMARY KEY,
    password VARCHAR(500) NOT NULL,
    enabled BOOLEAN NOT NULL
);

CREATE TABLE authorities (
    username VARCHAR(50) NOT NULL,
    authority VARCHAR(50) NOT NULL,
    FOREIGN KEY (username) REFERENCES users(username),
    UNIQUE KEY auth_unique (username, authority)
);

INSERT INTO users (username, password, enabled) VALUES 
('admin', '{noop}12345', 1),
('empleado', '{noop}12345', 1);

INSERT INTO authorities (username, authority) VALUES
('admin', 'ROLE_ADMIN'),
('empleado', 'ROLE_USER');

SELECT * FROM users;
SELECT * FROM authorities;