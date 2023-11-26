create table if not exists proprietar (
id serial primary key not null,
nume varchar (50) not null,
cnp varchar (13),
serie_numar_ci varchar (9)
);

create table if not exists adresa_proprietar (
	id serial primary key not null,
	adresa varchar (200) not null,
	curent_adress bool default true,
	foreign key (id) references proprietar (id)
);

create table if not exists terenuri (
	id serial primary key not null,
	cf int not null,
	intravilan bool not null,
	suprafata decimal not null,
	folosinta varchar (5) not null
);


create table if not exists proprietar_terenuri2 (
	proprietar_id int not null,
	terenuri_id int not null,
	primary key (proprietar_id, terenuri_id),
	foreign key (proprietar_id) references proprietar (id),
	foreign key (terenuri_id) references terenuri (id)
);