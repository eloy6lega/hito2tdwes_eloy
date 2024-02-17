DROP DATABASE IF EXISTS magicwater;
CREATE DATABASE magicwater;
USE magicwater;

CREATE TABLE cliente (
    DNI VARCHAR(10) PRIMARY KEY,
    pw VARCHAR(250),
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    email VARCHAR(50),
    tlf VARCHAR(9),
    rol VARCHAR(50),
    categoria VARCHAR(100),
    activo tinyint
);

CREATE TABLE proyecto (
    idproyecto int(100) PRIMARY KEY auto_increment,
    nombre VARCHAR(250),
    descripcion VARCHAR(250),
    zona VARCHAR(100),
    fecha date
);

CREATE TABLE tarea (
    idtarea INT(100) AUTO_INCREMENT PRIMARY KEY,
    idproyecto INT(100),
    titulo VARCHAR(100),
    descripcion VARCHAR(250),
    inicioPrevisto DATE,
    finPrevisto DATE,
    inicioReal DATE,
    finReal DATE,
    estado VARCHAR(50),
    DNI VARCHAR(10),
    FOREIGN KEY (idproyecto) REFERENCES proyecto(idproyecto),
    FOREIGN KEY (DNI) REFERENCES cliente(DNI)
);

-- SUPERVISORES
INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('12345678B', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'Juan', 'Martínez López', 'juan@gmail.com', '622222222', 'SUPERVISOR', 'Ingeniero', 1);

INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('98765432C', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'María', 'García Rodríguez', 'maria@gmail.com', '633333333', 'SUPERVISOR', 'Arquitecto', 1);

-- TRABAJADORES
INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('11111111A', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'Amelia', 'Gismero Sánchez', 'amelia@gmail.com', '611111111', 'TRABAJADOR', 'Mecánica', 1);

INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('22222222B', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'Carlos', 'Hernández Pérez', 'carlos@gmail.com', '644444444', 'TRABAJADOR', 'Electricista', 1);

INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('33333333C', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'Laura', 'Ruiz Gómez', 'laura@gmail.com', '655555555', 'TRABAJADOR', 'Fontanero', 1);

INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('44444444D', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'Pedro', 'Sánchez López', 'pedro@gmail.com', '666666666', 'TRABAJADOR', 'Carpintero', 1);

INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('55555555E', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'Ana', 'Gómez Martínez', 'ana@gmail.com', '677777777', 'TRABAJADOR', 'Pintor', 1);

INSERT INTO cliente (DNI, pw, nombre, apellidos, email, tlf, rol, categoria, activo) 
VALUES ('66666666F', '$2a$10$lF6/TEVcza8fTHUq2atoCulPDDSYu68aWKQnrW4cG6EpJVEmwNv.S', 'Javier', 'Fernández García', 'javier@gmail.com', '688888888', 'TRABAJADOR', 'Albañil', 1);


-- Proyectos
INSERT INTO proyecto (nombre, descripcion, zona, fecha) 
VALUES ('Depuración de Aguas', 'Depuración de las aguas mediante productos químicos', 'Laboratorio', '2024-02-13');
INSERT INTO proyecto (nombre, descripcion, zona, fecha) 
VALUES ('Limpieza de pozos', 'Limpieza de pozos para la calidad del agua', 'Exploración', '2024-02-13');
INSERT INTO proyecto (nombre, descripcion, zona, fecha) 
VALUES ('Limpieza de lagos', 'Limpieza de lagos para garantizar la seguridad', 'Exploración', '2024-02-13');
INSERT INTO proyecto (nombre, descripcion, zona, fecha) 
VALUES ('Examen de calidad', 'Examen de calidad del agua', 'Laboratorio', '2024-02-13');
INSERT INTO proyecto (nombre, descripcion, zona, fecha) 
VALUES ('Examen de potabilidad', 'Examen para verifucar el porcentaje de potabilidad del agua', 'Laboratorio', '2024-02-13');


-- Tareas
INSERT INTO tarea (idproyecto, titulo, descripcion, inicioPrevisto, finPrevisto, estado, DNI) 
VALUES (1, 'Análisis químico del agua', 'Realizar análisis químico del agua depurada', '2024-02-20', '2024-02-25', 'En progreso', '12345678B');

INSERT INTO tarea (idproyecto, titulo, descripcion, inicioPrevisto, finPrevisto, estado, DNI) 
VALUES (2, 'Limpieza de pozos 1', 'Limpieza del pozo número 1', '2024-02-20', '2024-02-28', 'En espera', '22222222B');

INSERT INTO tarea (idproyecto, titulo, descripcion, inicioPrevisto, finPrevisto, estado, DNI) 
VALUES (3, 'Limpieza de lago principal', 'Limpieza del lago principal para garantizar la seguridad', '2024-02-20', '2024-02-27', 'Pendiente', '98765432C');

select * from cliente;
select * from proyecto;
select * from tarea;
