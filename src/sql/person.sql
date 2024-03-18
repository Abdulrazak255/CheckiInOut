#1
    create table if not exists person (

    person_id char(16) unique not null ,
    first_name varchar(255) not null ,
    last_name varchar(255 )not null ,
    date_of_birth date not null ,
    gender char null ,
    nick_name varchar(20) null ,
    user_id int not null ,
    primary key (user_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)

                                                   );
#2
INSERT INTO person (person_id, first_name, last_name, date_of_birth, gender, nick_name, user_id)
VALUES
    ('1', 'Raphael', 'Zolotarev', '1993-01-01', 'M', 'RZ', 1),
    ('2', 'Doan', 'Smith', '1990-05-05', NULL, 'DS', 2),
    ('2', 'Cathreen', 'jack', '1990-05-05', 'F', null, 2),
    ('3', 'Rutger', 'Van de Borne', '1988-12-15', 'M', 'AJ', 3);
#3
UPDATE person
SET first_name = 'Robert', last_name = 'Brown'
WHERE person_id = '2';

UPDATE person
set first_name = 'Jacky', last_name = 'Chan'
where gender sounds like NULL ;








