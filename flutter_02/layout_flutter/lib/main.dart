import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Bagian title section
  Widget get titleSection {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Pantai Gedung Tumpang',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Layout: Khoir Karol N",
      home: Scaffold(
        appBar: AppBar(title: const Text("Demo Image Section")),
        body: Builder(
          builder: (context) {
            // Warna utama dari tema
            Color color = Theme.of(context).primaryColor;

            // Bagian button section
            Widget buttonSection = Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(color, Icons.call, 'CALL'),
                _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
                _buildButtonColumn(color, Icons.share, 'SHARE'),
              ],
            );

            // Bagian text section
            Widget textSection = Container(
              padding: const EdgeInsets.all(32),
              child: const Text(
                'Pantai Gedung Tumpang adalah salah satu destinasi wisata alam '
                'yang menawan di pesisir selatan Malang. Pantai ini terkenal '
                'dengan tebing-tebing kokoh yang menjulang di tepi laut dan '
                'hamparan pasir putih yang masih alami. Suasana tenang dan '
                'pemandangan laut biru membuatnya cocok untuk tempat bersantai '
                'atau berfoto bersama keluarga dan teman. '
                'Jangan lupa untuk menjaga kebersihan agar keindahan pantai ini '
                'tetap terjaga 🌴.\n\n'
                'Nama: Khoir Karol Nurzuraidah\n'
                'NIM: 2341760048',
                softWrap: true,
              ),
            );

            // 🔹 Gabungkan semua elemen ke dalam ListView
            return ListView(
              children: [
                Image.asset(
                  'images/pantai.jpg', // ganti ke .png jika itu formatnya
                  width: 600,
                  height: 240,
                  fit: BoxFit.cover,
                ),
                titleSection,
                buttonSection,
                textSection,
              ],
            );
          },
        ),
      ),
    );
  }

  // Method untuk membuat kolom tombol
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
