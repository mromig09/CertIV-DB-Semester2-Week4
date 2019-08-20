drop table if exists [log];
drop table if exists account;

create table account (
    acctNo              int,
    fName               nvarchar(20),
    lName               nvarchar(30),
    creditLimit         money,
    balance             money,
    origAcct            int,
    recAcct             int,
primary key (acctNo),
);

create table [log] (
    origAcct            int,
    logDateTime         date,
    recAcct             int,
    amount              money,
primary key (origAcct, logDateTime),
foreign key (origAcct) references account,
foreign key (recAcct) references account,
);


create procedure acctNums (@num1 int, @num2 int)
as
begin
declare @num3 int
set @num3 = @num1 + @num2
print @num3
end