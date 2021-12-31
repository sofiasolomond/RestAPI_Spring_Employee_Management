INSERT INTO tbl_employees (first_name, last_name, email) VALUES
  ('Lokesh', 'Gupta', 'abc@gmail.com'),
  ('Deja', 'Vu', 'xyz@email.com'),
  ('Caption', 'America', 'cap@marvel.com');

INSERT INTO tbl_roles (role_name) VALUES
  ('ADMIN'),
  ('USER');
  
  INSERT INTO tbl_user (user_name, user_password) VALUES
  ('admin', '$2a$12$un4NWn/eAApLfJURAu6uu.VAMGlqc352thvsSWNCV6791J.GD9A5W'),
  ('user', '$2a$12$I9PhAhc7QN6eb1C4gqSZke9jwGyolU8HjMn5PeLF.nte67JVdAWW.');
  
    INSERT INTO tbl_users_roles (user_id, role_id) VALUES (1,1), (2,2)
