// lib/screens/result_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'home_screen.dart';

class ResultScreen extends StatefulWidget {
  final String? ocrText;
  final String? imagePath; // jika perlu

  const ResultScreen({Key? key, this.ocrText, this.imagePath}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late FlutterTts _flutterTts;

  @override
  void initState() {
    super.initState();
    _flutterTts = FlutterTts();
    _setupTts();
  }

  Future<void> _setupTts() async {
    // set bahasa Indonesia
    try {
      await _flutterTts.setLanguage("id-ID");
      // Anda bisa atur pitch, rate jika diinginkan:
      // await _flutterTts.setPitch(1.0);
      // await _flutterTts.setSpeechRate(0.5);
    } catch (e) {
      // jika gagal set bahasa, jangan crash—bisa ignore atau log
    }
  }

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
  }

  Future<void> _speak() async {
    final text = widget.ocrText ?? '';
    if (text.trim().isEmpty) return;
    await _flutterTts.speak(text);
  }

  void _goHomeAndClearStack() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    final displayText = widget.ocrText ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hasil Pindai'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            displayText, // Jangan melakukan replaceAll, biarkan \n utuh
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
      // Kita gunakan dua FAB dengan Column
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            heroTag: 'home_fab',
            onPressed: _goHomeAndClearStack,
            tooltip: 'Kembali ke Home',
            child: const Icon(Icons.home),
          ),
          const SizedBox(height: 12),
          FloatingActionButton(
            heroTag: 'tts_fab',
            onPressed: _speak,
            tooltip: 'Bacakan Teks',
            child: const Icon(Icons.volume_up),
          ),
        ],
      ),
    );
  }
}
