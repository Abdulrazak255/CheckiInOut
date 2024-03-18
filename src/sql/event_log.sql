create table if not exists event_log (

     id_log int primary key ,
     user_info varchar(255) not null ,
     event_date date not null ,
     check_in_time time ,
     check_out_time time

     );
use checkinoutdb ;
ALTER TABLE event_log
    ADD COLUMN user_id INT,
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) references users (user_id);


INSERT INTO event_log (user_info, event_date, check_in_time, check_out_time)
VALUES
    ('user_info_1', '2024-03-18', '08:00:00', '17:00:00'),
    ('user_info_2', '2024-03-18', '09:00:00', '16:30:00'),
    ('user_info_3', '2024-03-18', '10:00:00', '18:00:00'),
    ('user_info_4', '2024-03-18', '11:00:00', '17:30:00'),
    ('user_info_5', '2024-03-19', '08:30:00', '16:00:00'),
    ('user_info_6', '2024-03-19', '09:30:00', '17:00:00'),
    ('user_info_7', '2024-03-19', '10:30:00', '15:30:00'),
    ('user_info_8', '2024-03-19', '11:30:00', '18:30:00'),
    ('user_info_9', '2024-03-20', '08:45:00', '17:45:00'),
    ('user_info_10', '2024-03-20', '09:45:00', '16:45:00'),
    ('user_info_11', '2024-03-20', '10:45:00', '18:45:00'),
    ('user_info_12', '2024-03-20', '11:45:00', '15:45:00'),
    ('user_info_13', '2024-03-21', '08:15:00', '17:15:00'),
    ('user_info_14', '2024-03-21', '09:15:00', '16:15:00'),
    ('user_info_15', '2024-03-21', '10:15:00', '18:15:00'),
    ('user_info_16', '2024-03-21', '11:15:00', '15:15:00'),
    ('user_info_17', '2024-03-22', '08:25:00', '17:25:00'),
    ('user_info_18', '2024-03-22', '09:25:00', '16:25:00'),
    ('user_info_19', '2024-03-22', '10:25:00', '18:25:00'),
    ('user_info_20', '2024-03-22', '11:25:00', '15:25:00');


# Dit is log van vandaag
SELECT * FROM event_log
WHERE event_date = CURDATE();


