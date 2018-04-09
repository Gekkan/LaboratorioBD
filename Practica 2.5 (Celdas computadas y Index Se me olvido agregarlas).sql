alter table DetalleVenta
add Descuento1  as (Precio * .25)

alter table DetalleVenta 
add Descuento2 as (Precio *0.10)

-- Index --
execute sp_helpindex 'Persona'

create nonclustered index IDX_Completo
on Persona(APaterno, AMaterno, Nombre)

select APaterno, AMaterno, Nombre from Persona

create nonclustered index IDX_APAterno
on Persona(APaterno)

select APaterno from Persona

create nonclustered index IDX_Asiento
on Asiento(NoAsiento, Zona)

select NoAsiento, Zona from Asiento


