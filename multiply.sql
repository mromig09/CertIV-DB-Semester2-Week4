drop procedure multiply;
GO

create procedure multiply (@firstValue int, @secondValue int)
as
begin
declare @multiplynum int
set @multiplynum=@firstValue*@secondValue
print @multiplynum
end

exec multiply @firstValue = 2, @secondValue = 3;


