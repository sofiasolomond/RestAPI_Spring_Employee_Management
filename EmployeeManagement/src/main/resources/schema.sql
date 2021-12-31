
CREATE TABLE tbl_employees (
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  email VARCHAR(250) NOT NULL);

CREATE TABLE tbl_roles (
role_id INT AUTO_INCREMENT PRIMARY KEY,
role_name VARCHAR(16) NOT NULL);


CREATE TABLE tbl_user (
user_id INT AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(250) NOT NULL,
user_password VARCHAR(250) NOT NULL);

CREATE TABLE tbl_users_roles (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
role_id INT NOT NULL);

ALTER TABLE tbl_users_roles ADD FOREIGN KEY (user_id) REFERENCES tbl_user(user_id);
ALTER TABLE tbl_users_roles ADD FOREIGN KEY (role_id) REFERENCES tbl_roles(role_id);
