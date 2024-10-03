# Pemrograman Mobile - Pertemuan 6

<table>
    <thead>
        <th style="text-align: center;" colspan="2">Pertemuan 6</th>
    </thead>
    <tbody>
        <tr>
            <td>Nama</td>
            <td>Ridho Aulia' Rahman</td>
        </tr>
        <tr>
            <td>Nim</td>
            <td>2241720162</td>
        </tr>
    </tbody>
</table>

# Praktikum 1: Membangun Layout di FLutter

**Langkah 1: Buat Project Baru**

Buatlah sebuah project flutter baru dengan nama layout_flutter.

![alt](../../docs/pertemuan_06_1.png)

**Langkah 2: Buka file lib/main.dart**

Buka file `main.dart` lalu ganti dengan kode berikut. Isi nama dan NIM Anda di `text title`.

![alt](../../docs/pertemuan_06_2.png)

**Langkah 4: Implementasi title row**

Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp.

```dart
Widget titleSection = Container(
  padding: const EdgeInsets.all(...),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment: ...,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: ...),
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(...),
            ),
          ],
        ),
      ),
      /* soal 3*/
      Icon(
       ...,
        color: ...,
      ),
      const Text(...),
    ],
  ),
);
```

/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.

/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.

/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

Jawab :

![alt](../../docs/pertemuan_06_3.png)

# Praktikum 2: Implementasi button row

**Langkah 1: Buat method Column _buildButtonColumn**

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

![alt](../../docs/pertemuan_06_4.png)

**Langkah 2: Buat widget buttonSection**

Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

![alt](../../docs/pertemuan_06_6.png)

**Langkah 3: Tambah button section ke body**

![alt](../../docs/pertemuan_06_5.png)

# Praktikum 3: Implementasi text section

**Langkah 1: Buat widget textSection**

Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

![alt](../../docs/pertemuan_06_7.png)

**Langkah 2: Tambahkan variabel text section ke body**

![alt](../../docs/pertemuan_06_8.png)

# Praktikum 4: Implementasi image section

**Langkah 1: Siapkan aset gambar**

Mencari gambar di internet yang ingin ditampilkan, lalu set nama file tersebut ke file pubspec.yaml

![alt](../../docs/pertemuan_06_9.png)

**Langkah 2: Tambahkan gambar ke body**

![alt](../../docs/pertemuan_06_10.png)

**Langkah 3: Terakhir, ubah menjadi ListView**

Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.

![alt](../../docs/pertemuan_06_11.png)

Jika konten tidak muat di layar, ListView akan menambahkan scroll secara otomatis.

![alt](../../docs/pertemuan_06_12.gif)

# Silakan implementasikan di project baru "basic_layout_flutter".

**Langkah 1: Buat Project Baru**

Membuat project baru dengan nama `basic_layout_flutter`.

![alt](../../docs/pertemuan_06_13.png)

**Langkah 2: Lakukan Slicing sesuai dengan instruksi pada gambar**

![alt](../../docs/pertemuan_06_14.png)

**Langkah 3: Membuat Layout**

Membentuk layout sesuai dengan gambar.

![alt](../../docs/pertemuan_06_15.png)

**Langkah 4: Isi konten pada Column petama**

Membuat custom Widget untuk menampilkan konten pada Column pertama.

![alt](../../docs/pertemuan_06_16.png)

Isi konten pada Column pertama.

![alt](../../docs/pertemuan_06_17.png)

**Langkah 5: Isi konten pada Column kedua**

Menyiapkan asset gambar yang akan digunakan.

![alt](../../docs/pertemuan_06_18.png)

Memasukkan asset gambar ke dalam folder assets. dan load gambar ke dalam aplikasi.

![alt](../../docs/pertemuan_06_19.png)