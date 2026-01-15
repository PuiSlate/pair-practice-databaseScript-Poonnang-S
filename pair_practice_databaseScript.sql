START TRANSACTION;

DROP TABLE IF EXISTS department, course_materials, course, library_resource;

CREATE TABLE department (
department_id INT PRIMARY KEY, 
department_name VARCHAR(100) NOT NULL
);

CREATE TABLE course (
course_id INT PRIMARY KEY,
course_name VARCHAR(40) NOT NULL,
department_id INT, 
FOREIGN KEY (department_id) REFERENCES department(department_id)
);

CREATE TABLE library_resource (
resource_id INT PRIMARY KEY,
resource_name VARCHAR(80),
resource_type VARCHAR(40)
);

CREATE TABLE course_materials (
course_material_id INT PRIMARY KEY,
course_material_title VARCHAR(50),
course_material_type VARCHAR(40),
course_id INT,
resource_id INT,
FOREIGN KEY (course_id) REFERENCES course(course_id),
FOREIGN KEY (resource_id) REFERENCES library_resource(resource_id)
);

COMMIT;
