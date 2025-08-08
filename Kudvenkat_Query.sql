create database kudvenkat_Qeury


use kudvenkat_Qeury
create table tblGender(
ID int Not null primary key,
Gender nvarchar(50) Not NUll

);

sp_help tblGender;

EXEC sp_help 'tblGender';

SELECT * FROM tblePerson 
select * from tblGender


////////////////////////INDENTITY TABLE CONCEPT ///////////////////



	Alter table tblePerson
	add constraint tblePerson_GenderId_FK
	Foreign key (GenderId) REFERENCES tblGender(Id)

	insert into tblePerson (ID,Name,Email,GenderId) values (10,'johnny','j@gmail.com',null)




	ALTER TABLE tblePerson
	Add constraint DF_tblPerson_GenderId
	Default  3 for GenderId


	insert into tblePerson  values(11,'sara','s@gmail.com',3,93)



	alter table tblePerson
	drop Constraint CK_tblePerson_Age


	delete FROM  tblPerson1 where PersonId=1

	insert into tblPerson1 (PersonId,Name) values (1,'jeet')

	select * from tblPerson1


	SET IDENTITY_INSERT tblPerson1 off



	delete from tblPerson1

	insert into tblPerson1 values('Yandu')


	DBCC CHECKIDENT (tblPerson1, RESEED ,0)


	////  LAST GENERATED IDENTIY VALUES////////////////////////////////////////////////

	CREATE TABLE Test1
	(
	ID INT identity(1,1),
	name nvarchar(100)
    );

	create table Test2(
	ID int identity (1,1),
	name nvarchar(20)
    );

	insert into Test1 values('x1');

	create trigger trForInsert on Test1 for insert 
	as 
	begin 
	  insert into Test2 values('yyy')
	end

	

	SELECT * FROM Test2
	select * from Test1

    insert into Test1 values('x1')


	select SCOPE_IDENTITY()
	select @@IDENTITY
	select IDENT_CURRENT ('Test2')



