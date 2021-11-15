CREATE PROCEDURE spwCreateADAdminUser
  @adUser VARCHAR(100)
AS
BEGIN
  CREATE user @adUser from external provider;

  ALTER ROLE db_datareader ADD MEMBER @adUser; 
  ALTER ROLE db_datawriter ADD MEMBER @adUser; 
  ALTER ROLE db_ddladmin ADD MEMBER @adUser; 
END
