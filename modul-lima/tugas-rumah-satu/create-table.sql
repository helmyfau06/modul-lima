-- Create table intsruktur and insert data
CREATE TABLE instruktur (nip int (1) PRIMARY KEY,
                         nama_ins varchar (250),
                         jurusan varchar (250),
                         asal_kota varchar (250));

INSERT INTO instruktur (nip, nama_ins, jurusan, asal_kota) VALUES
('1','Muhammad Akbar','Ilmu Sejarah','Malang'),
('2','Saichul Fitrian A.','Ilmu Komputer','Malang'),
('3','Annafia Oktafian','Ilmu Komputer','Klaten'),
('4','Budy Pratama','Ilmu Komputer','Magelang');

-- Create table matakuliah and insert data
CREATE TABLE matakuliah (kode_mk varchar (6) PRIMARY KEY,
                         nama_mk varchar (30),
                         sks INT (1));

INSERT INTO matakuliah (kode_mk,nama_mk,sks) VALUES
('PTI01','Algoritma dan Pemrograman','3'),
('PTI02','Basis Data','3'),
('PTI03','Visual Basic','3'),
('ISI01','Sejarah Indonesia','3');

-- Create table ambil_mk and insert data
CREATE TABLE ambil_mk (nip int (1),
                       kode_mk varchar (6),
                       ruangan varchar (5),
                       jml_mhs INT (2));

INSERT INTO ambil_mk (nip,kode_mk,ruangan,jml_mhs) VALUES
('3','PTT01','H5211','40'),
('2','PTT02','H5212','45'),
('2','PTT03','H5206','40'),
('1','ISI01','I7312','30');