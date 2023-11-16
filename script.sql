DROP DATABASE IF EXISTS mysqlProject;

CREATE DATABASE mysqlProject;

USE mysqlProject;

DROP TABLE IF EXISTS companies;

CREATE TABLE companies (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255),
  category VARCHAR(255)
);

INSERT INTO companies (name, category)
VALUES ('Walmart', 'Grocery');

INSERT INTO companies (name, category)
VALUES ('BestBuy', 'Electronics');

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(255),
  lastName VARCHAR(255),
  age INT,
  weight DECIMAL(5,2),
  gender VARCHAR(1),
  companyId INT,
  FOREIGN KEY (companyId) REFERENCES companies(id)
);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('John', 'Doe', 35, 183.7, 'M', 1);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('Jane', 'Doe', 33, 155.1, 'F', 1);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('Chad', 'Smith', 35, 185.3, 'M', 1);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('Karen', 'Smith', 33, 159.5, 'F', 1);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('Chad', 'Smith', 35, 165.3, 'M', 2);


INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('A', 'A', 23, 122.7, 'M', 1);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('B', 'B', 26, 151.6, 'F', 1);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('C', 'C', 15, 133.2, 'M', 1);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('D', 'D', 9, 63.4, 'F', 1);



INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('E', 'E', 55, 126.7, 'M', 2);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('F', 'F', 71, 164.5, 'F', 2);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('G', 'G', 62, 131.7, 'M', 2);

INSERT INTO users (firstName, lastName, age, weight, gender, companyId)
VALUES ('H', 'H', 41, 139.4, 'F', 2);
