import 'package:flutter/material.dart';

class FooterInfo extends StatelessWidget {
  final String name;
  final String nim;

  const FooterInfo({super.key, required this.name, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade50,
      padding: const EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(nim, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
