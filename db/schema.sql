CREATE TABLE department (
    id INTEGER AUTO_INCREMENT PRIMARY KEY, 
    department_name VARCHAR(30) NOT NULL 
);


CREATE TABLE designation (
    id INTEGER AUTO_INCREMENT PRIMARY KEY, 
    title VARCHAR(30),
    salary DECIMAL NOT NULL,
    department_id INTEGER REFERENCES department(id)
);

CREATE TABLE employee (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INTEGER REFERENCES designation(id),
    manager_id INTEGER REFERENCES employee(id) ON DELETE SET NULL
); 
