import 'package:flutter/material.dart';
import 'result_screen.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  bool isScanning = false;
  bool isFailed = false;
  String errorMessage = '';

  Future<void> _startScan() async {
    setState(() {
      isScanning = true;
      isFailed = false;
      errorMessage = '';
    });

    await Future.delayed(const Duration(seconds: 2)); // simulasi proses scan

    // simulasi kegagalan pemindaian (misalnya kamera tidak aktif)
    setState(() {
      isScanning = false;
      isFailed = true;
      errorMessage = 'Pemindaian Gagal! Periksa Izin Kamera atau coba lagi.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pindai Gambar')),
      body: Center(
        child: isScanning
            ? const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 16),
                  Text('Memindai gambar...'),
                ],
              )
            : isFailed
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.error_outline,
                          color: Colors.redAccent, size: 80),
                      const SizedBox(height: 16),
                      Text(
                        errorMessage,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        onPressed: _startScan,
                        icon: const Icon(Icons.refresh),
                        label: const Text('Coba Lagi'),
                      ),
                    ],
                  )
                : ElevatedButton.icon(
                    onPressed: _startScan,
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Mulai Pindai Gambar'),
                  ),
      ),
      floatingActionButton: !isScanning && isFailed
          ? FloatingActionButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultScreen(ocrText: '')),
                );
              },
              child: const Icon(Icons.arrow_forward),
            )
          : null,
    );
  }
}
