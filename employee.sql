CREATE TABLE employee(
    emp_id INT PRIMARY KEY,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    birth_day DATE,
    sex VARCHAR (1),
    salary INT, 
    super_id INT,
    brach_id INT
);

CREATE TABLE branch(
    brach_id INT PRIMARY KEY,
    brach_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY (mgr_id) REFERENCES employee (emp_id) 
    ON DELETE SET NULL);
