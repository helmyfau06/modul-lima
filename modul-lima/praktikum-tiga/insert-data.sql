-- Insert data to mahasiswa

INSERT into mahasiswa VALUES ('101', 'Arif', 'L', 'Jl. Kenangan');
INSERT into mahasiswa VALUES ('102', 'Budi', 'L', 'Jl. Jombang');
INSERT into mahasiswa VALUES ('103', 'Wati', 'P', 'Jl. Surabaya');
INSERT into mahasiswa VALUES ('104', 'Ika', 'P', 'Jl. Jombang');
INSERT into mahasiswa VALUES ('105', 'Tono', 'L', 'Jl. Jakarta');
INSERT into mahasiswa VALUES ('106', 'Iwan', 'L', 'Jl. Bandung');
INSERT into mahasiswa VALUES ('107', 'Sari', 'P', 'Jl. Malang');

-- Insert data to matakuliah
INSERT into matakuliah VALUES ('PTI447', 'Praktikum Basis Data', '1', '3');
INSERT into matakuliah VALUES ('TIK342', 'Praktikum Basis Data', '1', '3');
INSERT into matakuliah VALUES ('PTI333', 'Basis Data Terdistribusi', '3', '5');
INSERT into matakuliah VALUES ('TIK123', 'Jaringan Komputer', '2', '5');
INSERT into matakuliah VALUES ('TIK333', 'Sistem Operasi', '3', '5');
INSERT into matakuliah VALUES ('PTI123', 'Grafika Multimedia', '3', '5');
INSERT into matakuliah VALUES ('PTI777', 'Sistem Informasi', '2', '3');

-- Insert data to ambil_mk
INSERT INTO ambil_mk VALUES ('101','PTI447');
INSERT INTO ambil_mk VALUES ('103','TIK333');
INSERT INTO ambil_mk VALUES ('104','PTI333');
INSERT INTO ambil_mk VALUES ('104','PTI777');
INSERT INTO ambil_mk VALUES ('111','PTI123');
INSERT INTO ambil_mk VALUES ('123','PTI999');