


PRINT 'HELLO WORLD!'

DECLARE @myVariable INT
SET @myVariable = 6
PRINT @myVariable

Declare @var1 int, @var2 INT
SET @var1 = 4
SET @var2 = 5


PRINT 'Variable 1 = ' + CONVERT(varchar(5), @var1) + CHAR(13)  + 'Variable 2 = ' + CONVERT(varchar(5), @var2) + CHAR(13) + 'Total = '
PRINT @var1 + @var2

IF @var1 >= 3
	BEGIN
		PRINT 'Variable 1 <= ' + CONVERT(varchar(5),@var1) + CHAR(13)
	END
ELSE
	BEGIN
		PRINT 'Variable 1 is not < ' + CONVERT(varchar(5),@var1) + CHAR (13)
	END



IF @var1 < 2
	BEGIN
		PRINT 'Variable 1 < 2' 
	END
ELSE IF @var1 > 1 AND @var2 < 3
	BEGIN
		PRINT '1 < @Var1 < 3' 
	END
ELSE IF @var1 = 4 AND @var1 < 6
	BEGIN
		PRINT '4 <= @var1 < 6' 
	END
ELSE
	BEGIN
		PRINT 'Variable 1 does not qualify ' 
	END

/* COMMENTS YO THIS WAS PRACTICE ON SYNTAX AND LOGIC CONTROL */