update articuloscob
set procesado = 0
GO
update articuloscob
set procesado = 1
where rubro = 5002 and Subrubro = 3500
GO
update articuloscob
set procesado = 1
where rubro = 5002 and Subrubro = 500
GO
update articuloscob
set procesado = 1
where rubro = 2500
GO
update articuloscob
set procesado = 1
where rubro = 5000 or rubro = 5001
GO
update articuloscob
set procesado = 1
where rubro = 3030
GO
update articuloscob
set procesado = 1
where articuloscob.Procesado = 0
and ArticulosCob.ArtProv between 'Z' and 'ZZZ'
GO
update articuloscob
set procesado = 1
where ArticulosCob.ArtProv between 'W' and 'X'