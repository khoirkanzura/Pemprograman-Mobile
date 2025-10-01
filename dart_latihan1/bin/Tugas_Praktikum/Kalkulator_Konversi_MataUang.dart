void main() {
  print('======================================');
  print('        KONVERSI MATA UANG');
  print('======================================\n');

  final Map<String, double> nilaiTukar = {
    'USD': 1.0, // Dolar Amerika
    'IDR': 15500.0, // Rupiah Indonesia
    'EUR': 0.92, // Euro
    'JPY': 150.0, // Yen Jepang
    'GBP': 0.79, // Pound Sterling
  };

  double jumlahUang = 100.0; // dalam USD
  String mataUangAsal = 'USD';
  String mataUangTujuan = 'IDR';

  // Validasi mata uang
  if (!nilaiTukar.containsKey(mataUangAsal) ||
      !nilaiTukar.containsKey(mataUangTujuan)) {
    print('Mata uang tidak valid!');
    return;
  }

  // Konversi mata uang
  double nilaiDalamUSD = jumlahUang / nilaiTukar[mataUangAsal]!;
  double hasilKonversi = nilaiDalamUSD * nilaiTukar[mataUangTujuan]!;

  print('Hasil Konversi:');
  print('--------------------------------------');
  print(
    '$jumlahUang $mataUangAsal  →  ${hasilKonversi.toStringAsFixed(2)} $mataUangTujuan',
  );
  print('--------------------------------------\n');

  // Menampilkan daftar nilai tukar
  print('Daftar Nilai Tukar (berdasarkan 1 USD):');
  print('--------------------------------------');
  nilaiTukar.forEach((mataUang, nilai) {
    print('1 USD = $nilai $mataUang');
  });
  print('--------------------------------------');
}