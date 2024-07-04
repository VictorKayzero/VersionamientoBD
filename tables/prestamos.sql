-- Script para crear la tabla de prestamos (detalle)
-- Esta tabla registra los préstamos de libros a los usuarios del sistema.

CREATE TABLE prestamos (
    id_prestamo SERIAL PRIMARY KEY, -- ID único del préstamo (generado automáticamente)
    id_usuario INT NOT NULL, -- ID del usuario que realiza el préstamo
    id_libro INT NOT NULL, -- ID del libro prestado
    fecha_prestamo DATE NOT NULL DEFAULT CURRENT_DATE, -- Fecha en que se realiza el préstamo
    fecha_devolucion DATE, -- Fecha estimada de devolución del libro
    FOREIGN KEY (id_usuario) REFERENCES usuarios (id_usuario), -- Restricción de clave foránea
    FOREIGN KEY (id_libro) REFERENCES libros (id_libro) -- Restricción de clave foránea
);

-- Crear índice en para buscar por id de usuario y id de libro
CREATE INDEX prestamos_id_usuario ON prestamos (id_usuario);
CREATE INDEX prestamos_id_libro ON prestamos (id_libro);