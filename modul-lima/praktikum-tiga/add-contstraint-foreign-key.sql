ALTER TABLE ambil_mk ADD FOREIGN KEY (nim) REFERENCES mahasiswa (nim);
ALTER TABLE ambil_mk ADD FOREIGN KEY (kode_mk) REFERENCES matakuliah (kode_mk);