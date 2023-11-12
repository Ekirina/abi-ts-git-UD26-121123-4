DROP database IF EXISTS data26_04;
CREATE database data26_04;
USE data26_04;
CREATE table Facultad(
	codigo int auto_increment,
    nombre VARCHAR(100),
    primary key (codigo)
);
CREATE table Investigador(
	dni VARCHAR(8),
    nom_apels VARCHAR(255),
    codigo_facultad int,
    foreign key (codigo_facultad) REFERENCES Facultad (codigo)
	ON DELETE CASCADE ON UPDATE CASCADE,
	primary key (dni)
);
CREATE table Equipo(
	num_serie CHAR(4),
    nombre VARCHAR(100),
    codigo_facultad int,
    foreign key (codigo_facultad) REFERENCES Facultad (codigo)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (num_serie)
);
CREATE table Reserva(
    id INT auto_increment,
	dni VARCHAR(8),
    num_serie CHAR(4),
    comienzo datetime,
    fin datetime,
    foreign key (dni) REFERENCES Investigador (dni)
    ON DELETE CASCADE ON UPDATE CASCADE,
    foreign key (num_serie) REFERENCES Equipo (num_serie)
    ON DELETE CASCADE ON UPDATE CASCADE,
    primary key (id)
);
insert into Facultad (codigo, nombre) values (1, 'Arquitectura'), (2, 'Artes y Diseño'), (3, 'Ciencias'), (4, 'Ciencias Políticas y Sociales'), 
(5, 'Contaduría y Administración'), (6, 'Derecho'), (7, 'Economía'), (8,'Odontología'), (9, 'Ingeniería'), (10, 'Medicina');

insert into Investigador (dni, nom_apels, codigo_facultad) values (43073824, 'Andy Beidebeke', 9);
insert into Investigador (dni, nom_apels, codigo_facultad) values (79476133, 'Camellia Jaynes', 7);
insert into Investigador (dni, nom_apels, codigo_facultad) values (99454073, 'Gardy Rose', 4);
insert into Investigador (dni, nom_apels, codigo_facultad) values (35092405, 'Carny Finlaison', 6);
insert into Investigador (dni, nom_apels, codigo_facultad) values (66083241, 'Farrel Straughan', 7);
insert into Investigador (dni, nom_apels, codigo_facultad) values (18353982, 'Delainey Trussler', 9);
insert into Investigador (dni, nom_apels, codigo_facultad) values (39168447, 'Vern Glaisner', 8);
insert into Investigador (dni, nom_apels, codigo_facultad) values (80517374, 'Jillie Bursnall', 1);
insert into Investigador (dni, nom_apels, codigo_facultad) values (25676797, 'Slade Jezzard', 7);
insert into Investigador (dni, nom_apels, codigo_facultad) values (52727990, 'Anya Bannester', 3);


insert into Equipo (num_serie, nombre, codigo_facultad) values ('ABCD', 'Hunfredo', 10);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('ABSD', 'Gianina', 1);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('GDAS', 'Stevie', 5);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('KSDA', 'Kessiah', 7);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('ASKD', 'Oralie', 9);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('QJDS', 'Kimball', 3);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('PLDS', 'Heath', 8);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('MBCS', 'Rolf', 3);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('URTD', 'Chip', 3);
insert into Equipo (num_serie, nombre, codigo_facultad) values ('UJSD', 'Tobiah', 4);

insert into Reserva (dni, num_serie, comienzo, fin) values (43073824, 'ABCD', '2023-04-03 11:41:21', '2022-12-21 19:27:31');
insert into Reserva (dni, num_serie, comienzo, fin) values (79476133, 'ABSD', '2023-10-09 03:21:10', '2023-06-14 18:51:57');
insert into Reserva (dni, num_serie, comienzo, fin) values (99454073, 'GDAS', '2022-12-18 15:13:26', '2023-08-25 16:49:25');
insert into Reserva (dni, num_serie, comienzo, fin) values (35092405, 'KSDA', '2023-01-06 13:04:08', '2023-02-21 16:15:21');
insert into Reserva (dni, num_serie, comienzo, fin) values (80517374, 'ASKD','2023-09-15 14:39:44', '2023-07-29 18:46:27');
insert into Reserva (dni, num_serie, comienzo, fin) values (80517374, 'QJDS','2023-09-29 21:08:10', '2023-06-25 14:16:12');
insert into Reserva (dni, num_serie, comienzo, fin) values (35092405, 'PLDS', '2023-05-20 09:52:38', '2023-08-08 06:55:11');
insert into Reserva (dni, num_serie, comienzo, fin) values (52727990, 'MBCS', '2023-06-08 23:22:02', '2023-07-03 05:41:01');
insert into Reserva (dni, num_serie, comienzo, fin) values (52727990, 'URTD', '2023-04-10 08:24:33', '2023-09-11 23:50:27');
insert into Reserva (dni, num_serie, comienzo, fin) values (80517374, 'UJSD', '2022-12-26 22:58:09', '2023-03-15 09:02:57');