DECLARE @PadreId int = null

insert into Atributos (Descripcion,padreid,Estado,FechaAlta,UsuarioAlta)
values ('Cartera',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Cartera')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Bandolera',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Shopping',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Sobre',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Morral',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Golfera',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Bolso',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Mochila',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Baul',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Balde',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Marinero',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Mini Bag',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Gondola',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Calzado',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Calzado')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Zapato',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Bota',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Stileto',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Borcego',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Sandalia',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Botineta',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Ojota',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Mocasin',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Tejana',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Pancha',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Balerina',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Zapatilla',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Abotinado',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Rock',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Zueco',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Alpargatas',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Borsego',@PadreId,1,GETDATE(),'SQL Init')



SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Paragua',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Paragua')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Corto',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Largo',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Corto' and padreId= (select id from atributos where Descripcion = 'Paragua'))

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Hombre',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Mujer',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Largo' and padreId= (select id from atributos where Descripcion = 'Paragua'))

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Hombre',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Mujer',@PadreId,1,GETDATE(),'SQL Init')


SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Cinturon',@PadreId,1,GETDATE(),'SQL Init')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Hombre',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Mujer',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Equipaje',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Equipaje')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Bolso',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Valija',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Bolso con carro',@PadreId,1,GETDATE(),'SQL Init')


SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Billeteras',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Billetera')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Hombre',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Dama',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = NULL
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Fichero',@PadreId,1,GETDATE(),'SQL Init')


SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Prenda',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Prenda')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Tapado',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Blazer',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Saco',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Parka',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Campera',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Chaleco',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Piel Sintetico',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Cardigan',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Sweater',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Poncho',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Campera',@PadreId,1,GETDATE(),'SQL Init')


SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Accesorio',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Accesorio')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Monedero',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Porta Lente',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Perfume',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Llavero',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Pulsera',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Reloj',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Pashmina',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Bolsa',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Bolsas')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Carton',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Polietileno',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Frizelina',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Gráfica',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = null
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Caja',@PadreId,1,GETDATE(),'SQL Init')

SET @PadreId = (select id from Atributos where Descripcion = 'Cajas')

insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Carton',@PadreId,1,GETDATE(),'SQL Init')
insert into Atributos (Descripcion,PadreId,Estado,FechaAlta,UsuarioAlta)
values ('Madera',@PadreId,1,GETDATE(),'SQL Init')

