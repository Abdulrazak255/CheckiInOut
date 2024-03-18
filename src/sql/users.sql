create table if not exists users
(   user_id int unique auto_increment ,
    email varchar(255) unique not null ,
    GSM_nummer int (13)unique not null ,
    wachtwoord varchar(255) not null invisible ,
    active_code varchar(255) not null
);
insert into users (email, GSM_nummer, wachtwoord, active_code)
values ('abdulrazak.alyoussef@student.intecbrussel.be',0456154444,'789789789abdo','109238');

update users set wachtwoord = '2021' where user_id = 2 ;

select * from users where email like  'Al%' ;

