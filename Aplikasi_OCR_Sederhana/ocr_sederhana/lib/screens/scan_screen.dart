import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'result_screen.dart';

late List<CameraDescription> cameras;

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  CameraController? _controller;
  Future<void>? _initializeControllerFuture;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  Future<void> _initCamera() async {
    try {
      cameras = await availableCameras();
      _controller = CameraController(cameras.first, ResolutionPreset.medium);
      _initializeControllerFuture = _controller!.initialize();
      await _initializeControllerFuture;
      if (mounted) {
        setState(() {});
      }
    } catch (e) {
      debugPrint("Error saat inisialisasi kamera: $e");
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Gagal menginisialisasi kamera: $e')),
        );
      }
    }
  }

  Future<String> _ocrFromFile(File imageFile) async {
    final inputImage = InputImage.fromFile(imageFile);
    final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);
    final RecognizedText recognizedText = await textRecognizer.processImage(
      inputImage,
    );
    textRecognizer.close();
    return recognizedText.text;
  }

  Future<void> _takePicture() async {
    try {
      await _initializeControllerFuture;

      if (_controller == null || !_controller!.value.isInitialized) {
        throw Exception("Kamera belum siap.");
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Memproses OCR, mohon tunggu...'),
          duration: Duration(seconds: 2),
        ),
      );

      final XFile image = await _controller!.takePicture();
      final ocrText = await _ocrFromFile(File(image.path));

      if (!mounted) return;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ResultScreen(ocrText: ocrText)),
      );
    } catch (e) {
      if (!mounted) return;
      // Pesan error sudah diperbarui
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Pemindaian Gagal! Periksa Izin Kamera atau coba lagi.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // Tampilan loading kustom 
    if (_controller == null || !_controller!.value.isInitialized) {
      return Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(color: Colors.yellow),
              SizedBox(height: 20),
              Text(
                'Memuat Kamera... Harap tunggu.',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Kamera OCR')),
      body: Column(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: _controller!.value.aspectRatio,
              child: CameraPreview(_controller!),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: _takePicture,
              icon: const Icon(Icons.camera),
              label: const Text('Ambil Foto & Scan'),
            ),
          ),
        ],
      ),
    );
  }
}