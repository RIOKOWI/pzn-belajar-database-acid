drop table accounts;


use database_acid; -- use the db

create Table accounts ( -- membuat tabel accounts
    id      VARCHAR(100) NOT NULL PRIMARY KEY,
    name    VARCHAR(100) NOT NULL,
    balance BIGINT       NOT NULL
) ENGINE InnoDB;

select * from accounts; -- melihat isi tabel
    

-- ATOMICITY using transaction
start TRANSACTION; -- mulai transaction

-- masukin data 1
insert into accounts (id, name, balance)
values ("1", "Rio", 100000);

-- masukin data 2
insert into accounts (id, name, balance)
values ("2", "Kowi", 200000);

COMMIT; -- commit transaction fail/success

SELECT * from accounts; -- lihat isi tabel

start TRANSACTION; -- memulai transaksi

delete from accounts where id = "1"; -- delete data Rio tapi belum permanen karna belum di commit
delete from accounts where id = "2"; -- delete data Kowi tapi belum permanen karna belum di commit

ROLLBACK; -- semua operasi di batalkan

SELECT * from accounts; -- lihat isi tabel


-- CONSISTENCY
start TRANSACTION; -- memulai transaksi

update accounts set name = null -- tidak bisa karna constraint fieldnya adalah varchar. jadi harus consistent data yang di ubah dengan field atau constraint yang sudah di tetapkan di database. itu adalah prinsip Consistency
where id = "1";

COMMIT; -- commit transaction fail/success

SELECT * from accounts; -- lihat isi tabel


-- ISOLATION SQL transfer
start TRANSACTION; -- memulai transaksi

SELECT * from accounts WHERE name IN ("Rio", "Kowi") for UPDATE; -- locking for isolation akun rio dan kowi

update accounts set balance = balance - 50000 -- kurangi saldo si rio
where name = "Rio";

update accounts set balance = balance + 50000 -- tambah saldo si kowi
where name = "Kowi";

COMMIT; -- commit transaction fail/success

SELECT * from accounts; -- lihat isi tabel