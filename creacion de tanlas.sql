CREATE TABLE Socios (
    id_socio SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Barcos (
    matricula_barco VARCHAR(20) PRIMARY KEY,
    nombre VARCHAR(100),
    amarre VARCHAR(10),
    cuota FLOAT,
    socio_id INTEGER REFERENCES Socios(id_socio)
);

CREATE TABLE Salidas (
    id SERIAL PRIMARY KEY,
    fecha_salida TIMESTAMP,
    destino VARCHAR(100),
    patreon_nombre VARCHAR(100),
    patreon_telefono VARCHAR(15),
    barco_matricula VARCHAR(20) REFERENCES Barcos(matricula_barco)
);
