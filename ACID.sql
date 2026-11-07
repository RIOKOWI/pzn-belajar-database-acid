-- membuat database
create database database_acid;

-- use the db
use database_acid;

-- membuat tabel accounts
create Table accounts (
    id      VARCHAR(100),
    name    VARCHAR(100),
    balance BIGINT NOT NULL
)
    

