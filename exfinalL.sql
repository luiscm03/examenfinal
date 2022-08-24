Create database exfinal
use exfinal

CREATE table Personas
(
   Id int identity(1,1),
   Cedula varchar(20) not null,
   Nombre varchar(50) not null,
   Apellido Varchar(50),
   constraint PK_ident PRIMARY KEY(ID),
   CONSTRAINT UQ_Cedula Unique (Cedula)

)
select *from Personas

Create table Usuario
(
   nombre varchar(20),
   idusuario int, 
   Clave Varchar(30) not null,
   constraint pk_emailusuario PRIMARY KEY (Nombre),
)

create procedure Registro
  @cedula varchar(20),
  @Nombre varchar(50) ,
  @Apellido varchar(50) = null,
  @email varchar(20),
  @clave varchar(30)
   as 
    begin
      insert into Personas (cedula, Nombre, Apellido) values (@cedula, @Nombre, @Apellido)
	  
    
      insert into usuario (nombre, idusuario, clave)
      select @email, id, @clave from Personas where cedula = @cedula
    end

	select * from Usuario
	create table Productos
(
   id int identity(1,1),   
   descripcion varchar(20),
   cantidad int,
   precio int,
   Ccsto int,
   constraint PK_ID PRIMARY KEY(id)
)
insert into Productos values ('Martillos',30,2500,1000)
select * from Productos

create procedure IngresoProduct
   @desc varchar(20),
    @canti int,
   @precioo int,
   @costoo int
   as 
  
     begin
	 INSERT INTO Productos VALUES (@desc, @canti,@precioo,@costoo)
	 end

	 create procedure BorraProduc

	 @des int

   as 
  
     begin
	   delete  Productos where descripcion = @des
	 end


	 create procedure Actuproduct
	 @des varchar(20),
     @canti int,
    @precioo int,
	@costoo int
   as 
     begin
	   update Productos set  cantidad=@canti, precio=@precioo, ccsto =@costoo 
	   where descripcion = @des
	 end

create procedure Ganancias
as
begin
select id,Descripcion,Cantidad,Precio,Ccsto,
cantidad * precio as [TVentas],
cantidad * Ccsto as [TCostos],
(Cantidad * Precio) - (Cantidad * Ccsto) as [Ganancias]
from Productos
end