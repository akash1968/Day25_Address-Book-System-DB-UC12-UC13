/*UC 13 : Ensuring all retrieve queries are working fine with new table structure*/
use addressbooks_services;

select * from contact;
select * from contact_address;
select * from type;
select * from contact_type;
select * from addressbookList;
select * from addressbookmap;

--UC 6 working
--persons in aparticular city
select c.*,ca.city,ca.state,ca.zip
from contact c,contact_address ca
where c.Firstname=ca.FirstName and c.LastName=ca.lastName and ca.city='delhi';
--persons in a particular state
select c.*,ca.city,ca.state,ca.zip
from contact c,contact_address ca
where c.Firstname=ca.FirstName and c.LastName=ca.lastName and ca.state='chennai';

--UC 7 working
select City,count(City) as PeopleInCity from contact_address group by City;
select State,count(State) as PeopleInState from contact_address group by State;

--UC 8 working
select c.*,ca.city,ca.state,ca.zip
from contact c,contact_address ca
where c.Firstname=ca.FirstName and c.LastName=ca.lastName and ca.City='delhi' 
order by ca.FirstName,ca.LastName;

--UC 10 working
select t.ContactType,count(ct.TypeCode) as NumberOfContacts
from contact_type ct,type t
where t.TypeCode=ct.TypeCode
group by t.ContactType;