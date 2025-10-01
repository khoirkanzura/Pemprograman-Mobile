import 'dart:io';

bool cekPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write("Masukkan angka N: ");
  int n = int.parse(stdin.readLineSync()!);

  print("\nCek angka: $n");
  print(cekPrima(n) ? "$n adalah bilangan prima" : "$n bukan bilangan prima");

  print("Daftar bilangan prima sampai $n:");
  for (int i = 2; i <= n; i++) {
    if (cekPrima(i)) {
      print(i);
    }
  }
}
