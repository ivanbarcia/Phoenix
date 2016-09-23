/* Inicialización de tablas */
IF OBJECT_ID('dbo.ProveedoresCob', 'U') IS NOT NULL 
  DROP TABLE dbo.ProveedoresCob;
IF OBJECT_ID('dbo.ArticulosCob', 'U') IS NOT NULL 
  DROP TABLE dbo.ArticulosCob;
IF OBJECT_ID('dbo.Rubros', 'U') IS NOT NULL 
  DROP TABLE dbo.Rubros;
IF OBJECT_ID ('tr_articulos_his_INSERT', 'TR') IS NOT NULL  
  DROP TRIGGER tr_articulos_his_INSERT;  
IF OBJECT_ID ('tr_articulos_his_DELETE', 'TR') IS NOT NULL  
  DROP TRIGGER tr_articulos_his_DELETE;  
IF OBJECT_ID ('tr_articulos_his_UPDATE', 'TR') IS NOT NULL  
  DROP TRIGGER tr_articulos_his_UPDATE;  
IF OBJECT_ID ('tr_insumos_his_INSERT', 'TR') IS NOT NULL  
  DROP TRIGGER tr_insumos_his_INSERT;  
IF OBJECT_ID ('tr_insumos_his_UPDATE', 'TR') IS NOT NULL  
  DROP TRIGGER tr_insumos_his_UPDATE;  
  IF OBJECT_ID ('tr_insumos_his_DELETE', 'TR') IS NOT NULL  
  DROP TRIGGER tr_insumos_his_DELETE;  
IF OBJECT_ID ('tr_proveedores_his_INSERT', 'TR') IS NOT NULL  
  DROP TRIGGER tr_proveedores_his_INSERT;
IF OBJECT_ID ('tr_proveedores_his_UPDATE', 'TR') IS NOT NULL  
  DROP TRIGGER tr_proveedores_his_UPDATE;
IF OBJECT_ID ('tr_proveedores_his_DELETE', 'TR') IS NOT NULL  
  DROP TRIGGER tr_proveedores_his_DELETE;  

delete from articulos
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
delete from retenciones


