/* CREAR BASE DE DATOS */
CREATE DATABASE prueba;

CREATE TABLE usuarios (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100),
  edad INT
);

/*--------- DATOS PARA REGISTRAR A LA BASE DE DATOS --------*/

INSERT INTO usuarios (nombre, correo, edad) 
    VALUES 
    ('Carlos Pérez', 'carlos.perez@example.com', 25),
    ('María López', 'maria.lopez@example.com', 32),
    ('Juan Rodríguez', 'juan.rodriguez@example.com', 29),
    ('Ana García', 'ana.garcia@example.com', 27),
    ('Pedro Fernández', 'pedro.fernandez@example.com', 34),
    ('Lucía Martínez', 'lucia.martinez@example.com', 31),
    ('José Torres', 'jose.torres@example.com', 28),
    ('Laura Morales', 'laura.morales@example.com', 26),
    ('Diego Gutiérrez', 'diego.gutierrez@example.com', 30),
    ('Sofía Ramírez', 'sofia.ramirez@example.com', 24);


/*------- VALIDAR DATOS DE LA DB -------------*/
SELECT * FROM usuarios;

