void main() {
  List<Map<String, dynamic>> riwayat = [];

  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  tampilkanRiwayat(riwayat);
}

void hitungBMI(double tinggiCm, double beratKg, List<Map<String, dynamic>> riwayat) {
  double tinggiM = tinggiCm / 100;
  double bmi = beratKg / (tinggiM * tinggiM);
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }
  
  riwayat.add({
    'tinggi': tinggiCm,
    'berat': beratKg,
    'bmi': bmi.toStringAsFixed(2),
    'kategori': kategori,
  });
}

void tampilkanRiwayat(List<Map<String, dynamic>> riwayat) {
  for (var data in riwayat) {
    print("Tinggi: ${data['tinggi']} cm, Berat: ${data['berat']} kg, "
          "BMI: ${data['bmi']}, Kategori: ${data['kategori']}");
  }
}