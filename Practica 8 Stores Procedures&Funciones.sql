-- Store Procedures -- 

CREATE PROCEDURE Almacenamiento1 AS Select * from Vista1

execute Almacenamiento1

Create PROCEDURE Almacenamiento2 AS Select * from Vista2

execute Almacenamiento2

Create PROCEDURE Almacenamiento3 AS Select * from Vista3 

execute Almacenamiento3

Create PROCEDURE Almacenamiento4 AS Select * from Vista4

execute Almacenamiento4 

Create PROCEDURE Almacenamiento5 AS Select * from Vista5
-- No me ejecutaba lo de Almacenamiento 5 así que cree el 6 
execute Almacenamiento5

Create PROCEDURE Almacenamiento6 AS Select * from Vista5 

execute Almacenamiento6

-- Funcion 1 -- 

create function promedio
(@valor1 as decimal (20,3), @valor2 as decimal (20,3),@valor3 as decimal(20,3))
Returns decimal(10,2) 

as
begin
	declare @resultado decimal(20,3)
	set @resultado=(@valor1 + @valor2 + @valor3)/3
	return @resultado
end

--Prueba 1 

Select dbo.promedio(99,70,84) as promedio

-- Funcion 2 -- 

create function descuento
(@costo as decimal, @descuento as decimal)
Returns decimal

as

begin 
	declare @resultado as decimal
	set @resultado = (@costo * (@descuento/100)) --Descuento en numeros enteros
	return @resultado
end

-- Prueba 2 

Select dbo.descuento(14233.50, 25) as descuento

