CREATE TABLE Clientes (
	id INTEGER  PRIMARY KEY NOT NULL
	, Nombre 	varchar(500)
	, Organizacion	varchar(500)
	, documento	varchar(50)
	, Domicilio	varchar(500)
	, Telefono	varchar(100)
	, email 	varchar(100)
	, notas		varchar(2000)
	, bVisible	integer default 1
);

CREATE TABLE Equipos (
	id INTEGER  PRIMARY KEY NOT NULL
	, marca_id	integer default 0
	, modelo	varchar (100)
	, nSerie	varchar (100)
	, notas		varchar (2000)
	, bVisible	integer default 1
);

CREATE TABLE Marcas (
	id INTEGER  PRIMARY KEY NOT NULL
	, Marca		varchar(50)
	, bVisible	integer default 1
);

CREATE TABLE Trabajos (
	id INTEGER  PRIMARY KEY NOT NULL
	, equipo_id	integer default 0
	, cliente_id	integer default 0
	, fIngreso	date
	, Diagnostico	varchar (2000)
	, fEgreso	date
	, Detalle	varchar (2000)
	, bVisible	integer default 1
);
