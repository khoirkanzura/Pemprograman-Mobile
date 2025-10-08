# 🛍️ Laporan Praktikum Flutter — Aplikasi Belanja

**Nama:** Khoir Karol Nurzuraidah  
**Kelas:** SIB 3C  
**Absen:** 20  

---

## PRAKTIKUM 5 Membangun Navigasi di Flutter — *APLIKASI BELANJA*

### **Langkah 1: Menyiapkan Project Baru**
Buat project Flutter baru dengan nama **belanja**.  
Susun folder project sesuai struktur yang ditentukan agar kode lebih terorganisasi.  
<p align="center"><img src="./images/02.png" alt="Screenshot 1" width="400"/></p>

---

### **Langkah 2: Mendefinisikan Route**
Buat dua file Dart di dalam folder `pages`:

* `home_page.dart`
* `item_page.dart`

Deklarasikan:

* Class `HomePage` di `home_page.dart`
* Class `ItemPage` di `item_page.dart`  

Keduanya diturunkan dari `StatelessWidget`.  
<p align="center"><img src="./images/03.png" alt="Screenshot 2" width="400"/></p>
<p align="center"><img src="./images/03.1.png" alt="Screenshot 2" width="400"/></p>

---

### **Langkah 3: Melengkapi Kode di `main.dart`**
Tambahkan route unik:

* `/` → `HomePage`
* `/item` → `ItemPage`

Gunakan `initialRoute` untuk menentukan halaman awal.  
<p align="center"><img src="./images/04.png" alt="Screenshot 3" width="400"/></p>

---

### **Langkah 4: Membuat Data Model**
Buat file **`item.dart`** di dalam folder **`models`**.  
Definisikan model berisi **nama** dan **harga**.  
<p align="center"><img src="./images/05.png" alt="Screenshot 4" width="400"/></p>

---

### **Langkah 5: Melengkapi Kode di Class `HomePage`**
Gunakan `ListView` untuk menampilkan data yang diambil dari model berupa `List<Item>`.  
<p align="center"><img src="./images/06.png" alt="Screenshot 5" width="400"/></p>

---

### **Langkah 6: Membuat ListView dengan `itemBuilder`**
Gunakan `itemBuilder` untuk menampilkan setiap data.  
Gunakan widget `Card` sebagai pembatas antar item.  
<p align="center"><img src="./images/07.png" alt="Screenshot 6" width="400"/></p>

---

### **Langkah 7: Menambahkan Aksi pada ListView**
Tambahkan aksi klik menggunakan **InkWell**.  
Gunakan *Quick Fix* di VSCode → “Wrap with Widget” → ubah menjadi `InkWell` → tambahkan `onTap` untuk berpindah ke halaman `ItemPage`.  
<p align="center"><img src="./images/08.png" alt="Screenshot 7" width="400"/></p>

---

## TUGAS PRAKTIKUM 2

### **1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.**
<p align="center"><img src="./images/09.png" alt="Screenshot 7" width="400"/></p>

### **2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)**
<p align="center"><img src="./images/08.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/10.2.png" alt="Screenshot 7" width="400"/></p><p align="center"><img src="./images/00.mp4" alt="Screenshot 7" width="400"/></p>

### **3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya. Ubah di main, home_page, item_page, item.dart dan pubspec nya**
<p align="center"><img src="./images/10.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/10.1.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/12.1.png" alt="Screenshot 7" width="400"/></p><p align="center"><img src="./images/00.1.mp4" alt="Screenshot 7" width="400"/></p>

### **4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations. Ubah di main, home_page, item_page.**
<p align="center"><img src="./images/10.1.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/13.0.png" alt="Screenshot 7" width="400"/></p><p align="center"><img src="./images/00.2.mp4" alt="Screenshot 7" width="400"/></p>

### **5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.**
<p align="center"><img src="./images/13.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/13.1.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/00.3.mp4" alt="Screenshot 7" width="400"/></p>

### **6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!**
<p align="center"><img src="./images/14.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/14.1.png" alt="Screenshot 7" width="400"/></p>
<p align="center"><img src="./images/00.4.mp4" alt="Screenshot 7" width="400"/></p>

✨ Selesai.
Laporan Praktikum Flutter (Aplikasi Belanja + Tugas) — Khoir Karol Nurzuraidah (SIB 3C / Absen 20)
