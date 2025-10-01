void main() {
  print('======================================');
  print('   DEMONSTRASI SEMUA OPERATOR DART    ');
  print('======================================\n');

  print('1. OPERATOR ARITMATIKA');
  int a = 10, b = 3;
  print('$a + $b = ${a + b}');
  print('$a - $b = ${a - b}');
  print('$a * $b = ${a * b}');
  print('$a / $b = ${a / b}');
  print('$a ~/ $b = ${a ~/ b}');
  print('$a % $b = ${a % b}');
  print('--------------------------------------\n');

  print('2. OPERATOR INCREMENT/DECREMENT');
  int x = 5;
  print('x = $x');
  print('x++ = ${x++}, setelahnya x = $x');
  print('++x = ${++x}');
  print('x-- = ${x--}, setelahnya x = $x');
  print('--x = ${--x}');
  print('--------------------------------------\n');

  print('3. OPERATOR RELASIONAL');
  int num1 = 10, num2 = 20;
  print('$num1 == $num2: ${num1 == num2}');
  print('$num1 != $num2: ${num1 != num2}');
  print('$num1 > $num2: ${num1 > num2}');
  print('$num1 < $num2: ${num1 < num2}');
  print('$num1 >= $num2: ${num1 >= num2}');
  print('$num1 <= $num2: ${num1 <= num2}');
  print('--------------------------------------\n');

  print('4. OPERATOR LOGIKA');
  bool benar = true, salah = false;
  print('$benar && $salah = ${benar && salah}');
  print('$benar || $salah = ${benar || salah}');
  print('!$benar = ${!benar}');
  print('--------------------------------------\n');

  print('5. OPERATOR PENUGASAN');
  int nilai = 10;
  print('nilai = $nilai');
  nilai += 5; print('nilai += 5 -> $nilai');
  nilai -= 3; print('nilai -= 3 -> $nilai');
  nilai *= 2; print('nilai *= 2 -> $nilai');
  nilai ~/= 4; print('nilai ~/= 4 -> $nilai');
  nilai %= 3; print('nilai %= 3 -> $nilai');
  print('--------------------------------------\n');

  print('6. OPERATOR NULL-AWARE');
  String? nama;
  print('nama ?? "Tamu" = ${nama ?? "Tamu"}');
  nama = "Budi";
  print('nama?.length = ${nama?.length}');
  String? alamat;
  alamat ??= "Jakarta";
  print('alamat ??= "Jakarta" -> $alamat');
  print('--------------------------------------\n');

  print('7. OPERATOR TYPE TEST');
  dynamic data = "Hello Dart";
  print('data is String -> ${data is String}');
  print('data is! int -> ${data is! int}');
  String teks = data as String;
  print('data as String -> panjang teks = ${teks.length}');
  print('--------------------------------------\n');

  print('8. OPERATOR TERNARY');
  int nilaiUjian = 75;
  String hasil = nilaiUjian >= 70 ? "Lulus" : "Tidak Lulus";
  print('Nilai $nilaiUjian -> $hasil');
  print('--------------------------------------\n');

  print('9. OPERATOR BITWISE');
  int bitA = 5, bitB = 3; // 5=101, 3=011
  print('$bitA & $bitB = ${bitA & bitB}');
  print('$bitA | $bitB = ${bitA | bitB}');
  print('$bitA ^ $bitB = ${bitA ^ bitB}');
  print('~$bitA = ${~bitA}');
  print('$bitA << 1 = ${bitA << 1}');
  print('$bitA >> 1 = ${bitA >> 1}');
  print('--------------------------------------\n');
}
