-- 1) ������� ������� employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

select * from employees;

-- 2) ��������� ������� employee 70 ��������.

insert into employees (id, employee_name)
values  (default, '������� �������'),
		(default, '�������� ����'),
		(default, '�������� �������'),
		(default, '������� ����'),
		(default, '������ ����'),
		(default, '������ ���������'),
		(default, '������� ���'),
		(default, '������� �������'),
		(default, '������� ����'),
		(default, '������� �����'),
		(default, '������� ����'),
		(default, '������ ����'),
		(default, '�������� ������'),
		(default, '������ ���'),
		(default, '������ ������'),
		(default, '������� ���������'),
		(default, '������ ������'),
		(default, '������ �����'),
		(default, '��������� �����'),
		(default, '��������� ���������'),
		(default, '��������� ��������'),
		(default, '�������� �����'),
		(default, '������� ����'),
		(default, '����������� ����'),
		(default, '������ ����'),
		(default, '������� ������'),
		(default, '������� ����'),
		(default, '������� �������'),
		(default, '�������� �����'),
		(default, '�������� ������'),
		(default, '�������� ϸ��'),
		(default, '��������� ����'),
		(default, '������� ������'),
		(default, '������� ���������'),
		(default, '�������� �����'),
		(default, '������ ������'),
		(default, '���������� ���������'),
		(default, '�������� �����'),
		(default, '�������� ��������'),
		(default, '������� ��������'),
		(default, '�������� �����'),
		(default, '������ ���������'),
		(default, '������ ���������'),
		(default, '�������� ������'),
		(default, '������ ������'),
		(default, '�������� ��������'),
		(default, '�������� �����'),
		(default, '���������� ����'),
		(default, '�������� ������'),
		(default, '����� ������'),
		(default, '������ ����'),
		(default, '���������� �����'),
		(default, '�������� ��������'),
		(default, '���������� �������'),
		(default, '�������� ����'),
		(default, '����� �������'),
		(default, '������ �����'),
		(default, '������ ���������'),
		(default, '�������� ���������'),
		(default, '��������� �����'),
		(default, '������� ����������'),
		(default, '�������� �����'),
		(default, '��������� ������'),
		(default, '����� �������'),
		(default, '����� �������'),
		(default, '�������� �����'),
		(default, '��������� ������'),
		(default, '�������� ���'),
		(default, '������� ������');

select * from employees;

-- 3) ������� ������� salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

-- 4) ��������� ������� salary 15 ��������

insert into salary (id, monthly_salary)
values  (default, 1000),
		(default, 1100),
		(default, 1200),
		(default, 1300),
		(default, 1400),
		(default, 1500),
		(default, 1600),
		(default, 1700),
		(default, 1800),
		(default, 1900),
		(default, 2000),
		(default, 2100),
		(default, 2200),
		(default, 2300),
		(default, 2400),
		(default, 2500);
		
select * from salary;

-- 5) ������� ������� employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

select * from employee_salary;

-- 6) ��������� ������� employee_salary 40 ��������
-- � 10 ����� �� 40 �������� �������������� employee_id

insert into employee_salary (id, employee_id, salary_id)
values  (default, 71, 1),
		(default, 72, 2),
		(default, 73, 3),
		(default, 74, 4),
		(default, 75, 5),
		(default, 76, 6),
		(default, 77, 7),
		(default, 78, 8),
		(default, 79, 9),
		(default, 80, 10),
		(default, 70, 11),
		(default, 69, 12),
		(default, 68, 13),
		(default, 67, 14),
		(default, 66, 15),
		(default, 65, 16),
		(default, 64, 1),
		(default, 63, 2),
		(default, 62, 3),
		(default, 61, 4),
		(default, 60, 5),
		(default, 59, 6),
		(default, 58, 7),
		(default, 57, 8),
		(default, 56, 9),
		(default, 55, 10),
		(default, 54, 11),
		(default, 53, 12),
		(default, 52, 13),
		(default, 51, 14),
		(default, 50, 15),
		(default, 49, 16),
		(default, 48, 1),
		(default, 47, 2),
		(default, 46, 3),
		(default, 45, 4),
		(default, 44, 5),
		(default, 43, 6),
		(default, 42, 7),
		(default, 41, 8);
		
select * from employee_salary;

-- 7) ������� ������� roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

select * from roles;

-- 8) �������� ��� ������ role_name � int �� varchar(30)

alter table roles 
alter column role_name type varchar(30); --using role_name::int; ��������� ��� �������������� ������� � ��������� ����� ������ (����������� ���������)

select * from roles;

-- 9) ��������� ������� roles 20 ��������

insert into roles (id, role_name)
values  (default, 'Junior Python developer'),
		(default, 'Junior Java developer'),
		(default, 'Junior JavaScript developer'),
		(default, 'Junior Manual QA engineer'),
		(default, 'Junior Automation QA engineer'),
		(default, 'Sales manager'),
		(default, 'CEO'),
		(default, 'HR'),
		(default, 'Designer'),
		(default, 'Project Manager'),
		(default, 'Middle Python developer'),
		(default, 'Middle Java developer'),
		(default, 'Middle JavaScript developer'),
		(default, 'Middle Manual QA engineer'),
		(default, 'Middle Automation QA engineer'),
		(default, 'Senior Java developer'),
		(default, 'Senior JavaScript developer'),
		(default, 'Senior Manual QA engineer'),
		(default, 'Senior Automation QA engineer'),
		(default, 'Senior Python developer');
	
select * from roles;

-- 10) ������� ������� roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	FOREIGN KEY (employee_id)
		references employees(id),
	role_id int not null,
	FOREIGN KEY (role_id)
		references roles(id)
);

select * from roles_employee;

-- 11) ��������� ������� roles_employee 40 ��������

insert into roles_employee (id, employee_id, role_id)
values  (default, 40, 1),
		(default, 39, 2),
		(default, 38, 3),
		(default, 37, 4),
		(default, 36, 5),
		(default, 35, 6),
		(default, 34, 7),
		(default, 33, 8),
		(default, 32, 9),
		(default, 31, 10),
		(default, 30, 11),
		(default, 29, 12),
		(default, 28, 13),
		(default, 27, 14),
		(default, 26, 15),
		(default, 25, 16),
		(default, 24, 17),
		(default, 23, 18),
		(default, 22, 19),
		(default, 21, 20),
		(default, 20, 1),
		(default, 19, 2),
		(default, 18, 3),
		(default, 17, 4),
		(default, 16, 5),
		(default, 15, 6),
		(default, 14, 7),
		(default, 13, 8),
		(default, 12, 9),
		(default, 11, 10),
		(default, 10, 11),
		(default, 9, 12),
		(default, 8, 13),
		(default, 7, 14),
		(default, 6, 16),
		(default, 5, 17),
		(default, 4, 18),
		(default, 3, 19),
		(default, 2, 20);
		
	select * from roles_employee;