Create Database ByteSolutions

Go

Create table Cliente(
ID_Cliente varchar (5) primary key not null,
Nombre_Cliente varchar (30) not null,
No_Cuenta varchar (8) not null,
Direccion varchar (30) not null,
)

Insert into Cliente (ID_Cliente,Nombre_Cliente,No_Cuenta,Direccion)

Values 
('00001','Juan Perez','10000','Magnate #27 Sto Dgo'),
('00002','Mario Castillo','20000','Av Independencia #102 Sto Dgo'),
('00003','Luis Mendez','30000','Av Sarasota #89 Sto Dgo'),
('00004','Arturo Lopez','40000','San Antonio #104 Sto Dgo'),
('00005','Fernando Tapia','50000','Av San Martin #09 Sto Dgo'),
('00006','Pedro Carrasco','60000','Av Hatuey #56 Stgo'),
('00007','Julian Soto','70000','Los Rieles #18 Stgo'),
('00008','Humberto Colon','80000','Sabana Larga #160 Stgo'),
('00009','Alberto Socorro','90000','Av Rafael Vidal #29 Stgo'),
('00010','Manuel Campusano','10001','Buena Vista #15 Stgo');


Create table Empleado(
ID_Empleado varchar (5) primary key not null,
Nombre_Empleado varchar (30) not null,
Cargo varchar (20) not null,
Sueldo money not null,
)

Insert into Empleado (ID_Empleado,Nombre_Empleado,Cargo,Sueldo)

Values
('E5789','Edward Lopez','Reparador','75,000'),
('E6690','Gabriel Sanchez','Reparador','75,000'),
('E8075','Abel Martinez','Repador','75,000'),
('E7963','Richi Valdez','Reparador','75,000'),
('E8725','Junior Caminero','Reparador','75,000'),
('E0568','Fernando Ortiz','Remodelador','85,000'),
('E8692','Otto Compres','Remodelador','85,000'),
('E1077','Saul Rosso','Remodelador','85,000'),
('E2365','Bernnie Gonzalez','Remodelador','85,000'),
('E4876','Noel Rodriguez','Remodelador','85,000');


Create table Servicios(
ID_Servicio varchar (5) primary key not null,
Tipo_Servicio varchar (15) not null,
Costo_Servicio money not null, 
)

insert into Servicios (ID_Servicio,Tipo_Servicio,Costo_Servicio)

values
('R0001','Reparacion','25,000'),
('R0002','Remodelacion','70,000');


Create table Departamento(
ID_Departamento varchar (5) primary key not null,
Nombre_Departamento varchar (40) not null,
Ubicacion varchar (40) not null,
Gerente varchar (30) not null,
)

insert into Departamento (ID_Departamento,Nombre_Departamento,Ubicacion,Gerente)

Values 
('0101S','ByteSolutions Stgo','Av Juan Pablo Duarte #12','Antonio Banderas'),
('0102S','ByteSolutions Sto Dgo','Av Independencia #270','Ernesto Rondon');



Create table Factura(
ID_Factura varchar (5) primary key not null,
Nombre_Empresa varchar (15) not null,
ID_Departamento varchar (5) not null,
Nombre_Departamento varchar (40) not null,
ID_Cliente varchar (5) not null,
ID_Empleado varchar (5) not null,
ID_Servicio varchar (5) not null,
Monto_Total money not null,
)

Insert into Factura (ID_Factura,Nombre_Empresa,ID_Departamento,Nombre_Departamento,ID_Cliente,ID_Empleado,ID_Servicio,Monto_Total)

Values
('32556','ByteSolutions','0102S','ByteSolutions Sto Dgo','00001','E5789','R0001','25,000'),
('04683','ByteSolutions','0102S','ByteSolutions Sto Dgo','00002','E6690','R0001','25,000'),
('89257','ByteSolutions','0102S','ByteSolutions Sto Dgo','00003','E8075','R0001','25,000'),
('16975','ByteSolutions','0101S','ByteSolutions Stgo','00006','E7963','R0001','25,000'),
('63790','ByteSolutions','0101S','ByteSolutions Stgo','00007','E8725','R0002','70,000'),
('00945','ByteSolutions','0102S','ByteSolutions Sto Dgo','00004','E0568','R0002','70,000'),
('03456','ByteSolutions','0102S','ByteSolutions Sto Dgo','00005','E8692','R0001','25,000'),
('20589','ByteSolutions','0101S','ByteSolutions Stgo','00008','E1077','R0002','70,000'),
('11067','ByteSolutions','0101S','ByteSolutions Stgo','00009','E2365','R0001','25,000'),
('70795','ByteSolutions','0101S','ByteSolutions Stgo','00010','E4876','R0002','70,000');