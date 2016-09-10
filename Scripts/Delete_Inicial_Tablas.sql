/* Inicialización de tablas */
delete from articulos
delete from articulos_His
delete from insumos
delete from Proveedores
delete from UnidadesMedida
delete from CategoriaAtributo
delete from CategoriaTalles
delete from talles
delete from colores
delete from Temporadas
delete from Localidades
delete from Provincias
delete from Paises
delete from CondicionesIVA
delete from Cuentas
delete from articuloscob
delete from rubros

/* Delete after migracion*/
IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_ASIGNO_PADRE')
DROP PROCEDURE SP_ASIGNO_PADRE

IF EXISTS (SELECT * FROM sys.objects WHERE type = 'P' AND name = 'SP_INSERT_ARTICULOS')
DROP PROCEDURE SP_INSERT_ARTICULOS