-- Selects con joins inner --

select * from Empleado inner join Choferes on Empleado.idEmpleado = Choferes.idEmpleado

select * from DetalleVenta inner join Ventas on DetalleVenta.idDVenta = Ventas.idVenta

select * from Asiento inner join Boleto on Asiento.NoAsiento = Boleto.NoAsiento

select COUNT(folio) from Asiento inner join Boleto on Asiento.NoAsiento = Boleto.NoAsiento

-- Selects con joins left -- 

Select * from Persona left join Clientes on Persona.idPersona = Clientes.idPersona 

Select * from Persona left join Empleado on Persona.idPersona = Empleado.idPersona

Select idEmpleado from Empleado left join Persona on Empleado.idEmpleado = Persona.idPersona

Select * from Boleto left join Asiento on Boleto.idBoleto = Asiento.idAsiento

-- Selects con joins cross -- 

Select * from Boleto cross join Asiento

Select * from Persona cross join Clientes

-- Subconsulta --

Select * from Persona where Persona.AMaterno = (select AMaterno from Persona where AMaterno = 'Vargas')

-- Select with -- 

With PRACTICAWITH (idPersona, Nombre, AMaterno, APaterno) AS
(Select idPersona, Nombre, AMaterno, APaterno from Persona)
Select * from PRACTICAWITH 


-- Select into -- 

SELECT * into PRACTICA6 from Persona 
 
 -- Este usarlo para comprobar el Select Into -- 

SELECT * from PRACTICA6