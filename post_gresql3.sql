create table if not exists country (
	id serial primary key not null,
	indicativ char (3) not null,
	geometry varchar (100) not null,
	area decimal not null
);

create table if not exists county (
	id serial primary key  not null,
	country_id int not null,
	area decimal not null,
	sir_uta int not null,
	geometry varchar (100) not null default 'POLYGON',
	foreign key (country_id) references country(id)
);

create table if not exists universitate2 (
	adresa varchar (10) primary key not null,
	numar_telefon int not null,
	ridicare_kit_student varchar (15) not null
	 
);

create table if not exists facultate2 (
	adresa varchar (15) primary key not null,
	id_student serial not null,
	numar_telefon_facultate int not null,
	foreign key (id_student) references universitate (id_student)
);

create table if not exists users (
	id serial primary key not null,
	name varchar (50) not null,
	email varchar (50) null,
	phone_number varchar (20) null
);

create table if not exists adress (
	id serial primary key not null,
	users_id int not null unique,
	adress varchar (200) not null,
	is_valid bool not null,
	foreign key (users_id) references users (id)
);

create table if not exists books (
	id serial primary key not null,
	title varchar (100) not null,
	isbn varchar (10) not null,
	published_date date not null,
	price decimal null
	
	
);
 create table if not exists users_books(
	 id serial primary key not null,
	 users_id integer not null,
	 books_id int not null,
	 review text not null,
	 review_date date not null,
	 foreign key(users_id) references users (id)
	 foreign key (books_id) references books (id)
	
);

create table if not exists materii(
	id serial primary key not null,
	materie text null, 
	numar_ore_semestru int not null,
	numar_credite_semestru int not null,
			
);

create table if not exists profesori (
	id serial primary key not null,
	nume varchar (20) not null,
	prenume varchar (20) not null,
	varsta int not null,
	nr_telefon int not null
);

create table if not exists materie_profesor (
	id materie_profesor serial primary key not null,
	materie_id int not null,
	profesor_id int not null,
	foreign key (materie_id) references materii (id),
	foreign key (profesor_id) references profesori (id)
);