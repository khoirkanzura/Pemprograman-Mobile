import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4EFFC),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade200,
        title: Text(item.name, style: const TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(item.image, width: double.infinity, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text('Rp ${item.price}',
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.orange, size: 18),
                      Text('${item.rating} / 5'),
                      const SizedBox(width: 16),
                      Text('Stok: ${item.stock}'),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    item.description,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Chip(
                          label: Text(item.category),
                          backgroundColor: Colors.deepPurple.shade50),
                      const SizedBox(width: 8),
                      Chip(
                          label: Text(item.condition),
                          backgroundColor: Colors.deepPurple.shade50),
                      const SizedBox(width: 8),
                      Chip(
                          label: Text(item.weight),
                          backgroundColor: Colors.deepPurple.shade50),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 6)
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    minimumSize: const Size(0, 45),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                  label: const Text('Tambah Keranjang'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 224, 208, 250),
                    minimumSize: const Size(0, 45),
                  ),
                  onPressed: () {},
                  child: const Text('Beli Sekarang'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
