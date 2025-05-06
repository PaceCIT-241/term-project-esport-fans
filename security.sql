-- Create a role
CREATE ROLE reader;

-- Grant SELECT only
GRANT SELECT ON fifa2021.* TO reader;

-- Create users and assign role
CREATE USER 'user1'@'localhost' IDENTIFIED BY 'password1';
CREATE USER 'user2'@'localhost' IDENTIFIED BY 'password2';

GRANT reader TO 'user1'@'localhost', 'user2'@'localhost';

-- Ensure role is default
SET DEFAULT ROLE reader FOR 'user1'@'localhost';
SET DEFAULT ROLE reader FOR 'user2'@'localhost';












