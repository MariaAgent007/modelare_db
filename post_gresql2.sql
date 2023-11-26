create table accounts2 (
	id int primary key not null,
	username varchar (50) not null,
	password varchar (50) not null,
	email varchar (50)

);

create table accounts3 (
	id int primary key not null,
	name varchar (50) not null,
	password varchar (50) not null,
	adress varchar (50)
	
);

create table accounts4 (
	phone_number int primary key not null,
	email varchar (50) not null,
	work_adress varchar (50) not null,
	adress varchar (50)
	
);

create table if not exists accounts5 (
	phone_number int primary key not null,
	email varchar (50) not null,
	work_adress varchar (50) not null,
	adress varchar (50)
	
);

create table if not exists roles (
	id integer primary key not null, 
	name varchar (255) unique not null
);

create table if not exists teacher_roles (
	id serial primary key not null, 
	name varchar (255) unique not null
);
-- urmeaza sa cream un tabel cu cheie primara simpla
create table if not exists account_roles (
	id serial not null,
	name varchar (50) NOT NULL UNIQUE,
	creation_date date not null,
	primary key (id)
	
);

create table if not exists account_roles2 (
	id serial not null,
	name varchar (50) NOT NULL UNIQUE,
	creation_date date not null,
	primary key (id,name)
	
);

create table if not exists account_roles3 (
	id int not null,
	name varchar (50) NOT NULL,
	creation_date date not null,
	primary key (id,name)
	
);

create table if not exists NEW_TABLES (
	id integer not null,
	adress_name varchar (20) NOT NULL,
	adress_number integer unique,
	primary key (id)
	 
);	 

create table if not exists NEW_TABLES2 (
	id serial not null,
	name varchar (20),
	adress_name varchar (20) NOT NULL,
	adress_number integer unique,
	date_registration date not null,
	primary key (id,date_registration)
	 
);	

create table if not exists NEW_TABLES3(
	id serial not null,
	email char (20) not null,
	employees smallint,
	name varchar (20),
	adress_name varchar (20) NOT NULL,
	adress_number integer unique,
	date_registration date not null,
	primary key (id,date_registration)
	 
);

create table if not exists NEW_TABLES4 (
	name char (25),
	surname char (20),
	id integer not null,
	adress_name varchar (20) NOT NULL,
	adress_number integer unique,
	date_of_acquisition date not null,
	primary key (id)
	 
);


