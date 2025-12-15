CREATE DATABASE registrationDB;
USE DATABASE registrationDB;

CREATE TABLE IF NOT EXISTS public.registration
(
    car_id char(8) NOT NULL,
    region_id integer,
    CONSTRAINT registration_pkey PRIMARY KEY (car_id)
);


create table IF NOT EXISTS public.lookup_registration (
    id SERIAL PRIMARY KEY,
    region CHAR(8)
);

INSERT INTO lookup_registration(id, region) VALUES(1, 'OTHER'), (2, 'EU');