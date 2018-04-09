create view Vista1 AS Select idEmpleado from Empleado  where Tipo = 'Limpieza' group by idEmpleado

select * from Vista1 

create view Vista2 AS Select idEmpleado from Empleado where Tipo = 'Chofer' group by  idEmpleado

select * from Vista2

create view Vista3 AS Select idEmpleado from Empleado where tipo = 'Atencion a Clientes' group by idEmpleado

select * from Vista3

create view Vista4 AS Select Nombre from Persona inner join Empleado on Persona.idPersona = Empleado.idPersona

select * from Vista4

create view Vista5 AS Select idVenta from Boleto inner join Asiento on Boleto.idBoleto = Asiento.idAsiento

select * from Vista5
 