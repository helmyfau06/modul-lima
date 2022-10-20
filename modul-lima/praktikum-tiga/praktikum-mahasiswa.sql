-- Implicit Join Soal Nomor 1
SELECT COUNT(DISTINCT (nama)) 
AS mahasiswa_yang_ambil_matkul 
FROM mahasiswa, ambil_mk WHERE mahasiswa.nim = ambil_mk.nim;

-- Explicit Join Soal Nomor 1
SELECT COUNT(DISTINCT mahasiswa.nim) 
AS mahasiswa_yang_ambil_matkul 
FROM mahasiswa INNER JOIN ambil_mk ON mahasiswa.nim = ambil_mk.nim;

--Soal Nomor 2
SELECT m.jenis_kelamin, COUNT(m.jenis_kelamin) AS jumlah
FROM mahasiswa m
LEFT JOIN ambil_mk a 
ON m.nim=a.nim
WHERE a.nim IS NULL
GROUP BY m.jenis_kelamin;

-- Soal Nomor 3 Explicit Join
SELECT mahasiswa.nim, nama, matakuliah.kode_mk, nama_mk
FROM mahasiswa INNER JOIN (matakuliah INNER JOIN ambil_mk ON matakuliah.kode_mk = ambil_mk.kode_mk)
ON mahasiswa.nim = ambil_mk.nim;

-- Soal Nomor 3 Implicit Join
SELECT mahasiswa.nim, nama, matakuliah.kode_mk, nama_mk 
FROM mahasiswa, matakuliah, ambil_mk 
WHERE matakuliah.kode_mk = ambil_mk.kode_mk AND mahasiswa.nim = ambil_mk.nim;

-- Soal Nomor 4
SELECT mahasiswa.nim, nama, SUM(sks) AS jumlah_sks
FROM mahasiswa
INNER JOIN (matakuliah INNER JOIN ambil_mk ON matakuliah.kode_mk = ambil_mk.kode_mk)
ON mahasiswa.nim = ambil_mk.nim
GROUP BY nama HAVING SUM(sks)>4 AND SUM(sks)<10;

-- Soal Nomor 5
SELECT matakuliah.kode_mk, nama_mk, sks, semester
FROM matakuliah
LEFT OUTER JOIN (mahasiswa LEFT OUTER JOIN ambil_mk
ON mahasiswa.nim = ambil_mk.nim)
ON matakuliah.kode_mk = ambil_mk.kode_mk
WHERE mahasiswa.nim IS NULL;