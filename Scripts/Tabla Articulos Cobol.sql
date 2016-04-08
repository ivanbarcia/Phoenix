create table articulos_cob
(

Codigo varchar(50),	
Proveedor varchar(50),
Rubro int,
Subrubro int,
DescripcionLarga varchar(250),
DescripcionCorta varchar(250),
Costo	float,
Bonif1 float,
Bonif2 float,
Bonif3 float,
Precio	float,
PrecioAnterior float,
Utilidad float,
CodAlternativo int,
FechaPrecio datetime,
Estado varchar(200),
FechaAlta datetime,
LeyendaExp varchar(50),
FechaUltIngreso	datetime,
UltCantIngresada int,
StockMinimo int
);

select * from articulos_cob