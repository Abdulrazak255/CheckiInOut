create table if not exists (
    employee_id int not null unique auto_increment,
    person_i char(16) not null ,
    department_id int not null ,
    work_start_date date not null ,
    work_end_date date null ,
    profile_photo blob null ,
     primary key (employee_id),

    constraint person_to_employee_fk foreign key (person_id) references person
                           );