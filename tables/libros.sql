-- Script para crear la tabla de libros
-- Esta tabla almacena información de los libros disponibles en la biblioteca.

CREATE TABLE libros (
    id_libro SERIAL PRIMARY KEY, -- ID único del libro (generado automáticamente)
    titulo VARCHAR(200) NOT NULL, -- Título del libro
    autor VARCHAR(100) NOT NULL -- Autor del libro
);