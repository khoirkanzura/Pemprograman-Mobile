void main() {
  int angka = 7;

  // Jika angka <= 5, tampilkan format sederhana
  if (angka <= 5) {
    for (int i = 1; i <= 10; i++) {
      print('$angka x $i = ${angka * i}');
    }
  } else {
    // Jika angka > 5, tampilkan tabel dengan format lebih rapi
    print('Tabel perkalian $angka:');
    print('-------------------');

    for (int i = 1; i <= 10; i++) {
      String hasil = '$angka x $i = ${angka * i}';

      // Jika hasil perkalian genap, beri label (genap)
      if ((angka * i) % 2 == 0) {
        print('$hasil (genap)');
      } else {
        print(hasil);
      }
    }
  }
}
