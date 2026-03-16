use gestion_academica;

insert into usuarios(nombre, email, password, rol)
values("Juan Perez", "juan@test.com", "123456", "alumno");

insert into usuarios(nombre, email, password, rol)
values("Johana Lopez", "docente@test.com", "123456", "docente");

insert into cursos(nombre, descripcion)
values("Inglés Básico", "Curso de inglés nivel básico");