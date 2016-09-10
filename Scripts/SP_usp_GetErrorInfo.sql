IF OBJECT_ID ('usp_GetErrorInfo', 'P') IS NOT NULL
    DROP PROCEDURE usp_GetErrorInfo;
GO

-- Create a procedure to retrieve error information.
CREATE PROCEDURE usp_GetErrorInfo
	@Codigo	varchar(250)		,
	@VarAux varchar(250)		,
	@Padre int
AS
    SELECT 
        ERROR_NUMBER() AS ErrorNumber,
        ERROR_SEVERITY() AS ErrorSeverity,
        ERROR_STATE() as ErrorState,
        ERROR_PROCEDURE() as ErrorProcedure,
        ERROR_LINE() as ErrorLine,
        ERROR_MESSAGE() as ErrorMessage,
		@Codigo,
		@VarAux,
		@Padre;
GO