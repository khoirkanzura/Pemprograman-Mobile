void main() {
 
  print('======================================');
  print('         APLIKASI KONVERSI UNIT       ');
  print('======================================\n');

  // Map untuk menyimpan faktor konversi
  final Map<String, Map<String, double>> faktorKonversi = {
    'panjang': {
      'meter': 1.0,
      'kilometer': 0.001,
      'centimeter': 100.0,
      'milimeter': 1000.0,
      'inci': 39.3701,
      'kaki': 3.28084,
      'yard': 1.09361,
      'mil': 0.000621371
    },
    'massa': {
      'gram': 1.0,
      'kilogram': 0.001,
      'ons': 0.035274,
      'pon': 0.00220462,
      'ton': 0.000001,
      'kuintal': 0.00001
    },
    'volume': {
      'liter': 1.0,
      'mililiter': 1000.0,
      'galon': 0.264172,
      'pint': 2.11338,
      'quart': 1.05669,
      'cup': 4.22675,
      'sendok_makan': 67.628
    },
    'suhu': {
      'celsius': 1.0,
      'fahrenheit': 33.8,
      'kelvin': 274.15,
      'reamur': 0.8
    }
  };

  String kategori = 'panjang';
  double nilai = 10.0;
  String unitAsal = 'meter';
  String unitTujuan = 'kaki';

  print('Kategori yang dipilih : ${kategori.toUpperCase()}');
  print('Nilai yang dikonversi : $nilai $unitAsal → $unitTujuan\n');

  // Validasi input
  if (nilai < 0 && (kategori == 'massa' || kategori == 'volume')) {
    print('Error: Nilai tidak boleh negatif untuk kategori $kategori');
    return;
  }

  if (!faktorKonversi.containsKey(kategori)) {
    print('Error: Kategori $kategori tidak valid');
    return;
  }

  if (!faktorKonversi[kategori]!.containsKey(unitAsal) ||
      !faktorKonversi[kategori]!.containsKey(unitTujuan)) {
    print('Error: Unit tidak valid untuk kategori $kategori');
    return;
  }

  // Konversi nilai
  double hasil;
  if (kategori == 'suhu') {
    // Konversi khusus untuk suhu
    hasil = konversiSuhu(nilai, unitAsal, unitTujuan);
  } else {
    // Konversi untuk kategori lainnya
    double nilaiDalamBase = nilai / faktorKonversi[kategori]![unitAsal]!;
    hasil = nilaiDalamBase * faktorKonversi[kategori]![unitTujuan]!;
  }

  // Menampilkan hasil
  print('--------------------------------------');
  print('Hasil Konversi:');
  print('$nilai $unitAsal = ${hasil.toStringAsFixed(4)} $unitTujuan');
  print('--------------------------------------\n');

  // Menampilkan daftar unit yang tersedia
  print('Unit yang tersedia untuk kategori ${kategori.toUpperCase()}:');
  print('--------------------------------------');
  faktorKonversi[kategori]!.forEach((unit, faktor) {
    print('- $unit');
  });
  print('--------------------------------------');
}

// Fungsi khusus untuk konversi suhu
double konversiSuhu(double nilai, String dari, String ke) {
  // Konversi ke Celsius dulu
  double celsius;
  switch (dari) {
    case 'celsius':
      celsius = nilai;
      break;
    case 'fahrenheit':
      celsius = (nilai - 32) * 5 / 9;
      break;
    case 'kelvin':
      celsius = nilai - 273.15;
      break;
    case 'reamur':
      celsius = nilai * 5 / 4;
      break;
    default:
      return nilai;
  }

  // Konversi dari Celsius ke unit tujuan
  switch (ke) {
    case 'celsius':
      return celsius;
    case 'fahrenheit':
      return (celsius * 9 / 5) + 32;
    case 'kelvin':
      return celsius + 273.15;
    case 'reamur':
      return celsius * 4 / 5;
    default:
      return nilai;
  }
}
