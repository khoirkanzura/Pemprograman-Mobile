import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'home_screen.dart';

class ResultScreen extends StatefulWidget {
  final String ocrText;

  const ResultScreen({super.key, required this.ocrText});

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  final FlutterTts flutterTts = FlutterTts();

  @override
  void initState() {
    super.initState();
    flutterTts.setLanguage("id-ID"); // Bahasa Indonesia
  }

  @override
  void dispose() {
    flutterTts.stop(); // Hentikan suara saat halaman ditutup
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hasil OCR')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SelectableText(
            widget.ocrText.isEmpty
                ? 'Tidak ada teks ditemukan.'
                : widget.ocrText, // tampilkan teks utuh
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),

      // Dua FloatingActionButton: Home & Volume
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Tombol untuk membacakan teks
          FloatingActionButton(
            heroTag: 'ttsButton',
            onPressed: () async {
              await flutterTts.speak(widget.ocrText);
            },
            child: const Icon(Icons.volume_up),
          ),
          const SizedBox(height: 10),
          // Tombol untuk kembali ke Home
          FloatingActionButton(
            heroTag: 'homeButton',
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
                (route) => false,
              );
            },
            child: const Icon(Icons.home),
          ),
        ],
      ),
    );
  }
}