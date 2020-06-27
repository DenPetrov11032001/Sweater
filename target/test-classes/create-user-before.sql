delete from user_role;
delete from usr;

insert into usr(id, active, password, username) values
(1, true, '$2a$08$ykU4.1Fi2I1bRH6D4XKZr.1PS46TgQj2nXusycVP13PbYjq3q52Ga', 'admin'),
(2, true, '$2a$08$ykU4.1Fi2I1bRH6D4XKZr.1PS46TgQj2nXusycVP13PbYjq3q52Ga', 'denis');

insert into user_role(user_id, roles) values
(1, 'ADMIN'), (1, 'USER'),
(2, 'USER');