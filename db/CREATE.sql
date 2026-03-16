drop database if exists gestion_academica;

create database gestion_academica;

use gestion_academica;

create table usuarios(
	id int auto_increment primary key,
    nombre varchar(100),
    email varchar(100) unique,
    password varchar(255),
    rol enum('alumno', 'docente', 'admin'),
    fecha_cvreacion timestamp default current_timestamp
);

create table cursos(
	id int auto_increment primary key,
    nombre varchar(100),
    descripcion text
);

create table modulos(
	id int auto_increment primary key,
    curso_id int,
    nombre varchar(100),
    foreign key (curso_id) references cursos(id)
);

create table alumnos_cursos(
	id int auto_increment primary key,
    alumno_id int,
    curso_id int,
    foreign key (alumno_id) references usuarios(id),
    foreign key (curso_id) references cursos(id)
);

create table notas(
	id int auto_increment primary key,
	alumno_id int,
	modulo_id int,
	nota decimal(5,2),
	foreign key (alumno_id) references usuarios(id),
	foreign key (modulo_id) references modulos(id)
);

create table asistencias(
	id int auto_increment primary key,
    alumno_id int,
    modulo_id int,
    fecha date,
    presente boolean,
    foreign key (alumno_id) references usuarios(id),
    foreign key (modulo_id) references modulos(id)
);

create table horarios(
	id int auto_increment primary key,
    modulo_id int,
    dia_semana varchar(20),
    hora_inicio time,
    hora_fin time,
    foreign key (modulo_id) references modulos(id)
);

create table anuncios(
	id int auto_increment primary key,
    titulo varchar(200),
    contenido text,
    fecha timestamp default current_timestamp
);