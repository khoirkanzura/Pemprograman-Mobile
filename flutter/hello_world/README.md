# Laporan Praktikum Pemrograman Mobile

## Aplikasi Pertama dan Widget Dasar Flutter

**Nama  :** Khoir Karol Nurzuraidah  
**NIM   :** 2341760048  
**Kelas :** SIB 3C  

---

## Langkah Praktikum

### Praktikum 1: Membuat Project Flutter Baru
- **Langkah 1:**  
  Buka Visual Studio Code (VS Code), tekan **Ctrl + Shift + P** → pilih **Flutter: New Application Project** untuk membuat proyek baru.  
  <p align="center"><img src="./images/01.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 2:**  
  Pilih folder penyimpanan proyek (disarankan di *Documents* atau *Desktop*). Setelah itu, pilih Select a folder to create the project in untuk menentukan lokasi penyimpanan proyek.  

- **Langkah 3:**  
  Beri nama proyek `hello_world`, lalu tekan Enter.  
  <p align="center"><img src="./images/02.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 4:**  
  Akan muncul pesan **"Your Flutter Project is ready!"** yang menandakan proyek berhasil dibuat.  
  <p align="center"><img src="./images/03.png" alt="Screenshot 1" width="400"/></p>  

---

### Praktikum 2: Menghubungkan Perangkat Android atau Emulator

- **Mengaktifkan proses debug USB:**  
- **Langkah 1:**  
  Di perangkat Android: Settings → About phone → ketuk Build number 7x sampai muncul pesan *You are now a developer!*  
  <p align="center"><img src="./images/32.jpg" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/33.jpg" alt="Screenshot 1" width="400"/></p>  

- **Langkah 2:**  
  Settings → System → Developer options → aktifkan USB Debugging.  
  <p align="center"><img src="./images/34.jpg" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/35.jpg" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/36.jpg" alt="Screenshot 1" width="400"/></p>  

- **Langkah 3:**  
  **Android Studio:**  
  Buka **Tools > SDK Manager > SDK Tools**, centang **Google USB Driver**, lalu klik OK.  
  <p align="center"><img src="./images/37.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/37.1.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 4:**  
  **Menjalankan aplikasi di perangkat Android:**  
  - Sambungkan perangkat Android ke komputer menggunakan kabel USB. Dialog yang meminta Anda mengizinkan proses debug USB akan muncul di perangkat.  
  - Pilih kotak centang Always allow from this computer, lalu ketuk OK.  
  - Di Android Studio di komputer, pastikan perangkat Anda dipilih di menu dropdown. Klik Ini adalah ikon Run Android Studio.  
  <p align="center"><img src="./images/38.jpg" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/39.jpg" alt="Screenshot 1" width="400"/></p>  

---

### Praktikum 3: Membuat Repository GitHub dan Laporan Praktikum

- **Langkah 1:**  
  Buat repository baru di GitHub dengan nama `flutter-fundamental-part1`.  
  <p align="center"><img src="./images/07.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 2:**  
  Lalu klik **Create repository**.  
  <p align="center"><img src="./images/08.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 3:**  
  Buka project `hello_world` di VS Code lalu jalankan terminal baru melalui menu Terminal > New Terminal. Setelah itu, lakukan inisialisasi git dengan mengetik perintah yang sesuai di terminal pada ga,bar di bawah.  
  <p align="center"><img src="./images/09.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 4:**  
  Buka menu *Source Control* di sisi kiri VS Code, lalu lakukan stage (+) pada file .gitignore sebagai file pertama yang akan diunggah ke GitHub.  
  <p align="center"><img src="./images/10.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 5:**  
  Beri pesan commit **"tambah gitignore"** lalu klik Commit  
  <p align="center"><img src="./images/11.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 6:**  
  Lakukan push dengan klik bagian menu titik tiga > *Push*  
  <p align="center"><img src="./images/12.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 7:**  
  Di pojok kanan bawah akan tampil seperti gambar berikut. Klik *"Add Remote"*  
  <p align="center"><img src="./images/13.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 8:**  
  Salin tautan repository Anda dari browser ke bagian ini, lalu klik *Add remote.*  
  <p align="center"><img src="./images/14.png" alt="Screenshot 1" width="400"/></p>  
  Setelah berhasil, tulis remote name dengan "origin"  
  <p align="center"><img src="./images/14.0.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 9:**  
  Ulangi proses stage dan commit pada file *README.md* seperti pada Langkah 4. Setelah melakukan push, masukkan username GitHub dan token (sebagai pengganti password). Kemudian reload repository GitHub Anda, maka akan terlihat hasil push kedua file tersebut.  
  <p align="center"><img src="./images/15.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/15.0.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/16.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 10:**  
  Lakukan push untuk semua file project dengan memilih *Stage All Changes*, lalu beri pesan commit "project hello_world". Setelah itu, cek repository GitHub Anda dan pastikan seluruh file sudah berhasil ter-upload.  
  <p align="center"><img src="./images/17.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/18.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 11:**  
  Di VS Code, ubah platform di pojok kanan bawah ke emulator, device fisik, atau browser Chrome. Jalankan project hello_world dengan menekan F5 atau melalui menu Run > Start Debugging. Tunggu proses kompilasi selesai hingga aplikasi Flutter pertama Anda tampil di layar.  
  <p align="center"><img src="./images/19.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 12:**  
  Ubah teks pada aplikasi menjadi nama lengkap Anda, lalu jalankan kembali project dan ambil screenshot hasilnya. Simpan dengan nama 01.png di folder images (buat folder baru jika belum ada) pada project hello_world. Setelah itu, tambahkan gambar tersebut ke dalam README.md menggunakan sintaks Markdown, lalu lakukan push ke repository GitHub Anda.  
  <p align="center"><img src="./images/20.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/21.png" alt="Screenshot 1" width="400"/></p>  

---

### Praktikum 4: Menerapkan Widget Dasar

- **Langkah 1: Text Widget**  
  Buat folder basic_widgets di dalam folder lib, lalu buat file baru dengan nama text_widget.dart. Setelah itu, ketik atau salin kode program Text Widget ke dalam file tersebut di project hello_world Anda.  
  <p align="center"><img src="./images/22.png" alt="Screenshot 1" width="400"/></p>  
  Lakukan import file *text_widget.dart* ke dalam main.dart, lalu ganti bagian Text Widget bawaan dengan kode dari file tersebut. Jalankan aplikasi, ambil screenshot hasilnya, kemudian tambahkan laporan beserta gambar ke file README.md.  
  <p align="center"><img src="./images/23.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 2: Image Widget**  
  Buat file *image_widget.dart* di dalam folder basic_widgets, lalu isi dengan kode Image Widget. Tambahkan file logo Anda ke folder assets di project hello_world, kemudian sesuaikan kode serta lakukan import di main.dart. Setelah dijalankan, aplikasi akan menampilkan gambar sesuai logo yang ditambahkan.  
  <p align="center"><img src="./images/24.png" alt="Screenshot 1" width="400"/></p>  

---

### Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino

- **Langkah 1: Cupertino Button dan Loading Bar**  
  Buat file loading_cupertino.dart di dalam folder basic_widgets. Import material.dart dan cupertino.dart, lalu isi method Widget build dengan kode yang menampilkan CupertinoButton dan CupertinoActivityIndicator.  
  <p align="center"><img src="./images/25.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/25.1.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 2: Floating Action Button (FAB)**  
  Flutter menyediakan berbagai jenis tombol, seperti TextButton, ElevatedButton, IconButton, dan FloatingActionButton. Kali ini kita akan membuat Floating Action Button. Buat file baru di folder basic_widgets dengan nama fab_widget.dart, import StatelessWidget dari material, lalu isi method build dengan kode tombol FAB.  
  <p align="center"><img src="./images/26.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/26.1.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 3: Scaffold Widget**  
  Scaffold adalah widget yang digunakan untuk mengatur tata letak aplikasi sesuai prinsip Material Design. Untuk menerapkannya, ubah isi file main.dart seperti contoh berikut.  
  <p align="center"><img src="./images/27.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/27.1.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 4: Dialog Widget**  
  Di Flutter, terdapat dua jenis dialog yang umum digunakan: AlertDialog dan SimpleDialog. Untuk mencobanya, ubah isi file main.dart sesuai contoh berikut.  
  <p align="center"><img src="./images/28.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/28.1.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 5: Input dan Selection Widget**  
  Flutter menyediakan berbagai widget untuk menerima input dari pengguna, seperti Checkbox, Radio Button, Slider, Switch, Date & Time Picker, dan TextField. Contoh penggunaan TextField dapat dilihat seperti berikut.  
  <p align="center"><img src="./images/29.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/29.1.png" alt="Screenshot 1" width="400"/></p>  

- **Langkah 6: Date and Time Pickers**  
  Date and Time Pickers termasuk dalam kategori Input dan Selection Widget di Flutter. Widget ini memungkinkan pengguna memilih tanggal atau waktu dengan mudah. Berikut contoh penggunaannya, jangan lupa untuk mengimpor paket:  
  <p align="center"><img src="./images/30.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/30.1.png" alt="Screenshot 1" width="400"/></p>  
  <p align="center"><img src="./images/30.2.png" alt="Screenshot 1" width="400"/></p>  

---
