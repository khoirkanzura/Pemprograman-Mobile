import 'package:flutter/material.dart';
import 'home_page.dart'; // Impor class Item

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Ambil argumen yang dikirim dari HomePage di sini
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nama: ${item.name}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 16),
            Text('Harga: Rp ${item.price}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class Item {
  String? get name => null;

  get price => null;
}