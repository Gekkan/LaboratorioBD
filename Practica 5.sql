-- Select Simple con Where --  

select * From Asiento where Zona = 'Inferior Derecha '

select * From Asiento where Zona IS not Null

select * From Asiento where NoAsiento >= 5

Select * From Asiento where NoAsiento <= 7

Select * From Asiento where Zona is null

-- Select Simple con Group By -- 

Select NoAsiento, COUNT(*) from Asiento group by NoAsiento

Select NoAsiento, COUNT(*) from Asiento where Zona = 'Inferior Izquierda' group by NoAsiento

Select idPersona, COUNT(*) from Empleado where Tipo = 'Chofer' group by idPersona

Select idPersona from Empleado where Tipo = 'Chofer' group by idPersona

Select idEmpleado from Empleado  where Tipo = 'Limpieza' group by idEmpleado

-- Select con función agregada -- 

Select SUM(idEmpleado) from Empleado

Select Count(Precio) from DetalleVenta

Select SUM(Precio) from DetalleVenta

Select Count(Precio) from DetalleVenta where Precio >= 150

Select MIN(Precio) from DetalleVenta where Precio <= 140

-- Select con Having -- 

Select Nombre, avg(idPersona) from Persona where Genero = 'M' group by Nombre having AVG(idPersona) > 5 

Select AMaterno, avg(idPersona) from Persona where Genero = 'F' group by AMaterno having AVG(idPersona) > 10

Select FNacimiento, avg(idPersona) from Persona where Genero = 'M' group by FNacimiento having AVG(idPersona) >= 1

Select APaterno, avg(idPersona) from Persona where Genero = 'M' group by APaterno having avg(idPersona) >=2

Select FNacimiento, avg(idPersona) from Persona where Genero = 'F' group by FNacimiento  having avg(idPersona) <=16

-- Select con Top --

select top 7 * from Persona

Select top 1 * from Persona where Genero = 'F'

Select top 10 * from Asiento

Select top 2 * from Persona where Genero = 'M' 

Select top 2 * from Clientes

 




