# Database ACID

# Pengenalan Database ACID
## Database ACID
- ACID merupakan compliance (kepatuhan) untuk Sistem Basis Data yang memiliki karakter Atomicity, Consistency, Isolation dan Durability
- ACID adalah sekumpulan properti transaksi basis data yang dimaksudkan untuk menjamin validitas data meskipun ada kesalahan, kegagalan daya, dan kecelakaan lainnya.

## Atomicity
- Setiap statement dalam transaksi (baik itu membaca, menulis, mengubah atau menghapus), diperlakukan sebagai satu kesatuan
- Jika transaksi berhasil, maka seluruh statement harus berhasil
- Jika transaksi gagal, maka seluruh statement harus tidak boleh ada yang berhasil, atau digagalkan
- Properti ini mencegah terjadinya kehilangan atau kerusakan data, misal jika ditengah transaksi terjadi kegagalan aplikasi

## Consistency
- Memastikan bahwa transaksi hanya bisa mengubah data dari satu kondisi konsisten ke kondisi konsisten lainnya
- Setiap data yang ditulis ke database harus valid sesuai dengan semua aturan yang sudah ditetapkan
- Hal ini mencegah data data menjadi tidak konsisten, dan menjamin integritas relasi antar data

## Isolation
- Transaksi sering dieksekusi secara bersamaan (mis., Beberapa transaksi membaca dan menulis ke tabel pada waktu yang sama). 
- Isolation memastikan bahwa eksekusi transaksi secara bersamaan meninggalkan database dalam keadaan yang sama yang akan diperoleh jika transaksi dieksekusi secara berurutan. 
- Isolation adalah tujuan utama kontrol konkurensi; tergantung pada tingkat isolasi yang digunakan, efek dari transaksi yang tidak lengkap mungkin tidak terlihat oleh transaksi lain

## Durability
- Durability menjamin bahwa sekali transaksi telah disimpan, itu akan tetap disimpan bahkan dalam kasus kegagalan sistem (misalnya, pemadaman listrik atau crash).

## MySQL ACID
- MySQL sudah mengikuti kaidah ACID ketika menggunakan engine InnoDB
- `https://dev.mysql.com/doc/refman/8.0/en/mysql-acid.html`
- Di materi selanjutnya, kita akan coba praktekan ACID menggunakan database MySQL




