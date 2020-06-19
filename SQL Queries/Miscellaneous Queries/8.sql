Go
CREATE FUNCTION dbo.RemoveNonNumericCharacters 
(
@Temp VARCHAR(1000)
)
RETURNS VARCHAR(1000)

AS

BEGIN

    While PatIndex('%[^0-9]%', @Temp) > 0

        Set @Temp = Stuff(@Temp, PatIndex('%[^0-9]%', @Temp), 1, '')

    Return @Temp

END
Go
select dbo.RemoveNonNumericCharacters('1.2 SORRY NOW SOLD')