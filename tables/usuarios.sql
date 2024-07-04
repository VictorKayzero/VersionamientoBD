-- Script para crear la tabla de usuarios
-- Esta tabla almacena la información de los usuarios del sistema.

CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY, -- ID único del usuario (generado automáticamente)
    tipo_usuario VARCHAR(50), -- Tipo de usuario (cliente, administrador, etc.)
    nombre VARCHAR(100) NOT NULL, -- Nombre del usuario
    clave VARCHAR(20) NOT NULL, -- Clave de acceso del usuario
    apellido VARCHAR(100) NOT NULL, -- Apellido del usuario
    email VARCHAR(100) UNIQUE, -- Correo electrónico único del usuario
    telefono VARCHAR(20) -- Número de teléfono del usuario
);