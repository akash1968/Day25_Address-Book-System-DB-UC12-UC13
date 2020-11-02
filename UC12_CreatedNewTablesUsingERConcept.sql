
select * from addressbook;
--uc12
create table contact(
ID int not null identity(1,1) primary key,
FirstName varchar(20) not null,
LastName varchar(20) not null,
PhoneNo varchar(20) not null,
Email varchar(30) not null);


select * from contact;
insert into contact values (
'Peter','Parker','7765434567','peter@gmail.com');
insert into contact values (
'Tony','Stark','5544554433','tony.stark@yahoo.com');
insert into contact values (
'Virat','Kohli','9876545678','virat@gmail.com');
insert into contact values (
'Robert','Downey','9988776677','robert@gmail.com');


create table address(
ID int not null foreign key references contact(ID),
AddressBookName varchar(20) not null,
ContactType varchar(20) not null,
Address_Details varchar(100),
City varchar(100),
State_Name varchar(100),
Zip varchar(6)
);
select * from address;

insert into address values(
1,'Peter','FRIENDS','Newtown','Kolkata','WB','786598');
insert into address values(
2,'Tony','PROFESSION','NIT','Agartala','Tripura','799260');
insert into address values(
3,'Captain','FRIENDS','Mansarovar','moradabad','UP','233221');
insert into address values(
4,'Robert','FAMILY','Mayur Vihar','Delhi','Delhi','233223');

update address set ID=4 where AddressBookName='Peter';


