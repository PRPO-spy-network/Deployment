CREATE DATABASE locationsDB;
USE DATABASE locationsDB;



CREATE TABLE IF NOT EXISTS public.car_gps_data (
    time TIMESTAMPTZ NOT NULL,
    car_id char(8) NOT NULL,
    latitude DOUBLE PRECISION NOT NULL,
    longitude DOUBLE PRECISION NOT NULL,
    PRIMARY KEY (car_id, time)
);

CREATE EXTENSION IF NOT EXISTS timescaledb;
SELECT create_hypertable('car_gps_data', 'time');