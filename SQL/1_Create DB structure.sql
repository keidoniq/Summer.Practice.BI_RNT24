-- Step 1. Create database
CREATE DATABASE summer_practice;

-- Step 2. Switch to created database in DBeaver interface and run the below statements for creating schemasj
CREATE SCHEMA game;
CREATE SCHEMA dm;

-- Step 3. Create table game.sessions
CREATE TABLE game.sessions (
    session_id INT8,
    session_start_dt TIMESTAMP,
    session_finish_dt TIMESTAMP,
    username TEXT,
    ip_address TEXT,
    country TEXT,
    city TEXT,
    geo_point TEXT,
    CONSTRAINT pk_sessions PRIMARY KEY(session_id)
);

-- Step 4. Create table "game.ip_addresses"
CREATE TABLE game.ip_addresses (
    ip_address TEXT,
    is_banned BOOLEAN DEFAULT False
);
