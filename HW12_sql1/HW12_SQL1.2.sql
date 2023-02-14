--Таблица employees
--1)	Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--2)	Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (employee_name)
values  ('Janet Long'),
		('Timothy Hudson'),
		('Charlene Goodman'),
		('Patricia Fields'),
		('Bernard Berry'),
		('Willie Thomas'),
		('Rose Thompson'),
		('John Hopkins'),
		('Kristin Harris'),
		('Ellen Swanson'),
		('Larry Davis'),
		('Albert Garza'),
		('David Allen'),
		('Armando Smith'),
		('Bruce Jackson'),
		('Carole Lewis'),
		('Doris Jordan'),
		('Stephen Robertson'),
		('Janice Pena'),
		('Duane Parker'),
		('Kathleen Wheeler'),
		('Leo Adams'),
		('Margaret Underwood'),
		('Diane Larson'),
		('Bruce Williams'),
		('Angel Wright'),
		('Edna Garcia'),
		('Alma Taylor'),
		('Christopher Mendez'),
		('Arthur Castillo'),
		('Thomas Moore'),
		('Virginia Powell'),
		('Robert Bates'),
		('Patricia Powell'),
		('Linda Jones'),
		('Anthony Lewis'),
		('William Johnson'),
		('James Stanley'),
		('John Warren'),
		('Raul Thomas'),
		('Christopher Owens'),
		('Daniel Cummings'),
		('Albert Robinson'),
		('Margaret Freeman'),
		('Cody Cole'),
		('Danny Sanchez'),
		('James Dunn'),
		('John Evans'),
		('Joe Jones'),
		('Patricia Moore'),
		('Megan Weaver'),
		('Glenn Moore'),
		('Richard Richardson'),
		('Melissa Stone'),
		('James Sanchez'),
		('Donna Miller'),
		('Maria Watkins'),
		('Lloyd Williams'),
		('Douglas Goodman'),
		('John Nelson'),
		('Jose Gutierrez'),
		('Richard Carter'),
		('Beverly McKinney'),
		('Matthew Carter'),
		('Irene Smith'),
		('Nicole Clark'),
		('Jennifer Doyle'),
		('Larry Lewis'),
		('Randall Wolfe'),
		('Angela Bishop');

select * from employees;

--Таблица salary
--3)	Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--4)	Наполнить таблицу salary 15 строками.

create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary (monthly_salary)
values  (1000),
		(1100),
		(1200),
		(1300),
		(1400),
        (1500),
        (1600),
        (1700),
        (1800),
        (1900),
        (2000),
        (2100),
        (2200),
        (2300),
        (2400),
        (2500);
       
select * from salary;

--Таблица employee_salary
--5)	Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--6)	Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id.

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values 	(3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(7, 10),
		(21, 15),
		(13, 3),
		(55, 8),
		(17, 11),
		(22, 14),
		(18, 10),
		(20, 4),
		(24, 8),
		(2, 8),
		(57, 15),
		(34, 3),
		(41, 15),
		(28, 12),
		(47, 11),
		(10, 15),
		(46, 12),
		(25, 4),
		(6, 3),
		(75, 5),
		(97, 11),
		(92, 11),
		(88, 3),
		(71, 5),
		(84, 9),
		(72, 5),
		(83, 8),
		(87, 13),
		(79, 5);
	
select * from employee_salary;

--Таблица roles
--7)	Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--8)	Поменять тип столба role_name с int на varchar(30)
--9)	Наполнить таблицу roles 20 строками.

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles
alter column role_name type varchar (30);

insert into roles (role_name)
values	('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Designer'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer');
	
select * from roles;	

--Таблица roles_employee
--10)	Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--11)	Наполнить таблицу roles_employee 40 строками.

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees (id),
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee (employee_id, role_id)
values 	(7, 2),
		(20, 4),
		(3,	9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6,	7),
		(1, 1),
		(40, 5),
		(15, 5),
		(26, 18),
		(16, 10),
		(33, 11),
		(52, 4),
		(13, 16),
		(55, 15),
		(17, 17),
		(18, 8),
		(24, 2),
		(2, 11),
		(57, 6),
		(41, 20),
		(28, 2),
		(47, 12),
		(63, 19),
		(46, 5),
		(67, 8),
		(19, 8),
		(35, 5),
		(37, 8),
		(12, 5),
		(38, 18),
		(51, 19),
		(44, 5),
		(62, 14),
		(25, 14);
	
select * from roles_employee;
