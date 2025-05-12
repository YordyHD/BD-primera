
/*Inner JOIN*/
Select 
	a.fechas,
	a.horarios,
    c.idcliente,
    c.nombre,
    c.apellido
From Agendamiento as a
inner join Cliente as c on a.idcliente = c.idcliente;

/*Left JOIN*/
Select
	a.fechas,
	a.horarios,
    a.idcliente,
    c.nombre,
    c.apellido
From Agendamiento as a
left join Cliente as c on a.idcliente = c.idcliente;
	
	