void main() {
  // Loop luar: menentukan jumlah baris
  for (int i = 1; i <= 5; i++) {
    String baris = '';

    // Loop dalam: menambahkan '*' sesuai nilai i
    for (int j = 1; j <= i; j++) {
      baris += '* ';
    }

    // Cetak hasil tiap baris
    print(baris);
  }
}
