-- Tampilkan kd_mk dan mata kuliah yang jumlah mahasiswanya 40
SELECT ambil_mk.kode_mk,nama_mk,jml_mhs
FROM matakuliah
INNER JOIN ambil_mk ON matakuliah.kode_mk = ambil_mk.kode_mk WHERE jml_mhs=40;

-- Tampilkan data Instruktur yang mengajarkan ‘Basis Data’
SELECT instruktur.nip, nama_ins,jurusan,asal_kota,nama_mk
FROM instruktur
INNER JOIN (matakuliah INNER JOIN ambil_mk
ON matakuliah.kode_mk = ambil_mk.kode_mk)
ON instruktur.nip = ambil_mk.nip
WHERE nama_mk = "Basis Data";

-- Tampilkan data instruktur yang tidak mengajar
SELECT instruktur.nip, nama_ins, jurusan, asal_kota
FROM instruktur
LEFT OUTER JOIN ambil_mk
ON instruktur.nip = ambil_mk.nip
WHERE ambil_mk.nip IS NULL;