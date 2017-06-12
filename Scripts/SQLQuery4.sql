IF OBJECT_ID('tempdb..#_temp_remitos') IS NOT NULL
	DROP TABLE #_temp_remitos


CREATE TABLE #_temp_remitos(
    Campo1 varchar(5000)		
	);
BULK INSERT #_temp_remitos FROM 'C:\archivo000.TXT'
WITH (ROWTERMINATOR =' \n')
GO

DECLARE @Columna varchar(5000)
DECLARE @CodigoRemito varchar(250)
DECLARE @UsuarioAltaRem varchar(250)
DECLARE @TipoRemito varchar(4)
DECLARE @TipoDocumento varchar(2)
DECLARE @PtoVta varchar(4)
DECLARE @NroRemito varchar(10)
DECLARE @Motivo varchar(2)
DECLARE @Observaciones varchar(500)
DECLARE @FechaRemi datetime
DECLARE @HoraRemito varchar(4)
DECLARE @Destino varchar(1)
DECLARE @DestinoDesde varchar(4)
DECLARE @ClienteDestino varchar(6)
DECLARE @CodigoArticulo varchar (12)
DECLARE @CantidadItems float

DECLARE remitos_cursor CURSOR FOR
SELECT top 13 Campo1 from #_temp_remitos

OPEN remitos_cursor;  
FETCH NEXT FROM remitos_cursor into  @Columna;
WHILE @@FETCH_STATUS = 0  
	BEGIN  
		BEGIN TRY
				SET @TipoRemito = SUBSTRING(@Columna,1,4)
				if (@TipoRemito = 'REMI')
					begin
						set @TipoDocumento = SUBSTRING(@Columna,5,2)
						set @PtoVta = SUBSTRING(@Columna,8,4)
						set @NroRemito = SUBSTRING(@Columna,13,9)
						set @Motivo = SUBSTRING(@Columna,24,2)
						set @Observaciones = LTRIM(RTRIM(SUBSTRING(@Columna,26,34)))
						
						--set @FechaRemi = CAST(SUBSTRING(@Columna,60,8) + dateadd(SUBSTRING(@Columna,92,4),) as datetime)
						set @Destino = SUBSTRING(@Columna,69,1)
						set @DestinoDesde =SUBSTRING(@Columna,71,4)
						set @ClienteDestino = SUBSTRING(@Columna,82,6)
						set @HoraRemito = SUBSTRING(@Columna,92,4)
						set @UsuarioAltaRem = SUBSTRING(@Columna,97,10)
						--set @FechaRemi =CONVERT(datetime,datepart(day,@FechaRemi) + datepart(MONTH,@FechaRemi)+ datepart(YEAR,@FechaRemi)+ datepart(HOUR,@HoraRemito) )
						
						print @FechaRemi
						print @TipoRemito
						print @TipoDocumento
						print @PtoVta
						print @NroRemito
						print @Motivo
						print @Observaciones
						print @fecharemi
						print @Destino
						print @DestinoDesde
						print @ClienteDestino
						print @UsuarioAltaRem
						print @HoraRemito
					end
				else
					begin
						/*if (@PtoVta =(SUBSTRING(@Columna,24,4)) and (@NroRemito= SUBSTRING(@Columna,29,9)))
							begin
								
							end*/
						set @CodigoArticulo = SUBSTRING(@Columna,6,12)
						set @CantidadItems  = CONVERT(float,SUBSTRING(@Columna,43,9))

						print @CodigoArticulo
						print @CantidadItems
					end
				
				
			  FETCH NEXT FROM remitos_cursor into  @Columna;
		END TRY
		BEGIN CATCH
			EXECUTE usp_GetErrorInfo @CodigoRemito,@UsuarioAltaRem,1;
		END CATCH
	END;  
CLOSE remitos_cursor;  
DEALLOCATE remitos_cursor;  
GO 