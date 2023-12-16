create table autori (
id int primary key,
nume_autor varchar(20),
e_mail varchar (40)
)


create table carte (
id int primary key,
nume_carte text,
isbn varchar (500),
)


create table adresa (
numar_adresa int primary key,
nume_adresa varchar(20),
cod_postal varchar (6)
)


create table review (
rating int primary key,
comentariu text,
id_carte integer
)

create table if not exists autori_carte (
id serial not null,
autori_id int not null,
carte_id int not null,
primary key (id),


	
create table if not exists proprietar2 (
id serial not null,
cnp char (13) not null,
serie text not null,
numar_ci char (6) not null,
nume text,
primary key (id)
);
	
create table if not exists adresa2 (
adresa varchar (20) not null,
cod_postal char (6) not null,
primary key (id) 
)	
	
create table if not exists tara (
id serial not null,
nume text not null,
continent text not null,
fus_orar varchar (25) not null,
primary key (id)
);

create table if not exists regiune (
id serial not null,
nume text not null,
suprafata int not null,
primary key (id)
);
	
create table if not exists uat (
id serial not null,
nume text not null,
primary key (id),
foreign key (regiune_id, nume_id) references regiune (id, nume)
);	

create table if not exists structura_regiune (
id serial not null,
tip text not null,
primary key (id),
foreign key (tara_id, nume_id) references tara (id, nume)
);
	
create table if not exists marime (
id serial not null,
tip text not null,
marime int not null,
primary key (id),
foreign key (regiune_id, nume_id) references regiune (id, nume)
);	
	
create table if not exists vulnerabilitate (
id serial not null,
grad text not null,
primary key (id),
);
	
	
	
	
	
	
	
	
	
	
	
	
	
	