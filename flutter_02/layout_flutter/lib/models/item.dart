import 'package:flutter/material.dart';
import 'package:layout_flutter/pages/home_page.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menerima data dari HomePage
    final Item item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Center(
        child: Text(
          'Harga: Rp ${item.price}',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
