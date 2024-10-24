CREATE TABLE IF NOT EXISTS "Titles" (
    "title_id" VARCHAR PRIMARY KEY,
    "title" VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS "Departments" (
    "dept_no" VARCHAR PRIMARY KEY,
    "dept_name" VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS "Employees" (
    "emp_no" SERIAL PRIMARY KEY,
    "emp_title_id" VARCHAR NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR NOT NULL,
    "last_name" VARCHAR NOT NULL,
    "sex" VARCHAR NOT NULL,
    "hire_date" DATE NOT NULL,
    CONSTRAINT "fk_Employees_emp_title_id" FOREIGN KEY("emp_title_id")
    REFERENCES "Titles" ("title_id")
);

CREATE TABLE IF NOT EXISTS "Salaries" (
    "emp_no" INT PRIMARY KEY,
    "salary" INT NOT NULL,
    CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
    REFERENCES "Employees" ("emp_no")
);

CREATE TABLE IF NOT EXISTS "Dept_Manager" (
    "dept_no" VARCHAR NOT NULL,
    "emp_no" INT NOT NULL,
    PRIMARY KEY ("dept_no", "emp_no"),
    CONSTRAINT "fk_Dept_Manager_dept_no" FOREIGN KEY("dept_no")
    REFERENCES "Departments" ("dept_no"),
    CONSTRAINT "fk_Dept_Manager_emp_no" FOREIGN KEY("emp_no")
    REFERENCES "Employees" ("emp_no")
);

CREATE TABLE IF NOT EXISTS "Dept_Emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR NOT NULL,
    PRIMARY KEY ("emp_no", "dept_no"),
    CONSTRAINT "fk_Dept_Emp_emp_no" FOREIGN KEY("emp_no")
    REFERENCES "Employees" ("emp_no"),
    CONSTRAINT "fk_Dept_Emp_dept_no" FOREIGN KEY("dept_no")
    REFERENCES "Departments" ("dept_no")
);
