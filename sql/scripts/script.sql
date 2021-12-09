/*INSERT INTO departments (name, location) VALUES ('Sales', '101A');
INSERT INTO departments (name, location) VALUES ('Marketing', '103A');
INSERT INTO departments (name, location) VALUES ('R&D', '105A');
INSERT INTO departments (name, location) VALUES ('Maintenance', '202B');
INSERT INTO departments (name, location) VALUES ('Engineering', '204B');
INSERT INTO departments (name, location) VALUES ('Human Resources', '206B');

INSERT INTO employees (first_name, last_name, salary, department_id) VALUES ('Corey','Rose', 100000, 1);
INSERT INTO employees (first_name, last_name, salary, department_id) VALUES ('Jack','Emerson', 80000, 2);
INSERT INTO employees (first_name, last_name, salary, department_id) VALUES ('Stephanie','Rodriguez', 87000, 3);
INSERT INTO employees (first_name, last_name, salary, department_id) VALUES ('Michael','Moore', 68500, 4);
INSERT INTO employees (first_name, last_name, salary, department_id) VALUES ('Travis','Wheeler', 92000, 5);
INSERT INTO employees (first_name, last_name, salary, department_id) VALUES ('Ned','Stark', 98000, 6);
SELECT * FROM employees;*/

SELECT * FROM employees JOIN departments ON departments.id = employees.department_id WHERE employees.salary > 85000;