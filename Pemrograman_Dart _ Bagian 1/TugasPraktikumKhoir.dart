// void main() {
//   // Null Safety

//   String? nama; // nullable (bisa bernilai null)
//   print("Isi variabel nama: $nama"); // output: null

//   // String nama2; // ❌ error karena wajib diinisialisasi
//   String nama2 = "Khoir"; // non-nullable (tidak boleh null)
//   print("Isi variabel nama2: $nama2");
// }


void main() {
  // Late Variable
  late String salam; // deklarasi dulu tanpa inisialisasi
  salam = "Selamat Pagi"; // isi nilai kemudian
  print("Isi variabel salam: $salam");

  late int umur;
  umur = 20;
  print("Umur saya: $umur tahun");
}

// void main() {
//   for (var i = 0; i < 20; i++) {
//     print('hello nama saya khoir umur${i + 1}');
//   }
// }

