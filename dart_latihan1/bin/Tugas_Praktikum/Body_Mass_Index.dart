void main() {
  
  print('╔══════════════════════════════════════════════════╗');
  print('║               KALKULATOR BMI                     ║');
  print('╠══════════════════════════════════════════════════╣');
  
  double beratBadan = 65.0; 
  double tinggiBadan = 1.75; 
  double bmi = beratBadan / (tinggiBadan * tinggiBadan);
  
  String kategori;
    if (bmi < 18.5) {
      kategori = 'Kurus';
    } else if (bmi >= 18.5 && bmi < 25) {
      kategori = 'Normal';
    } else if (bmi >= 25 && bmi < 30) {
      kategori = 'Gemuk';
    } else {
      kategori = 'Obesitas';
    }
  
    print('Berat Badan: $beratBadan kg');
    print('Tinggi Badan: $tinggiBadan m');
    print('BMI: ${bmi.toStringAsFixed(2)}');
    print('Kategori: $kategori');
    print('║                                                  ║');
    print('╚══════════════════════════════════════════════════╝');
}
