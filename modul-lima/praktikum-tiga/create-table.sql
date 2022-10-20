CREATE TABLE mahasiswa (nim varchar (3) PRIMARY KEY,
                        nama varchar (250),
                        jenis_kelamin char (1),
                        alamat varchar (250));
                        
CREATE TABLE ambil_mk (nim varchar (3),
                       kode_mk varchar (6));

CREATE TABLE matakuliah (kode_mk varchar (6) PRIMARY KEY,
                         nama_mk varchar (250),
                         sks int (1),
                         semester int (1));