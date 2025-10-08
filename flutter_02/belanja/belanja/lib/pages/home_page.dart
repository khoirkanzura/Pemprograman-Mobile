import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/product_card.dart';
import '../widgets/footer_info.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Kecap Manis',
      price: 18000,
      image: 'lib/images/kecap.jpg',
      rating: 4.7,
      stock: 50,
      description: 'Kecap manis kental dan lezat, cocok untuk masakan nusantara.',
      category: 'Bumbu Dapur',
      weight: '200ml',
      condition: 'Baru',
    ),
    Item(
      name: 'Tepung Terigu',
      price: 12000,
      image: 'lib/images/tepung.jpg',
      rating: 4.8,
      stock: 70,
      description: 'Tepung terigu berkualitas tinggi untuk kue dan gorengan.',
      category: 'Sembako',
      weight: '1kg',
      condition: 'Baru',
    ),
    Item(
      name: 'Garam Dapur',
      price: 6000,
      image: 'lib/images/salt.jpg',
      rating: 4.9,
      stock: 100,
      description: 'Garam halus untuk kebutuhan dapur sehari-hari.',
      category: 'Sembako',
      weight: '250g',
      condition: 'Baru',
    ),
    Item(
      name: 'Gula Pasir',
      price: 15000,
      image: 'lib/images/sugar.jpg',
      rating: 4.8,
      stock: 90,
      description: 'Gula pasir murni cocok untuk minuman dan masakan.',
      category: 'Sembako',
      weight: '1kg',
      condition: 'Baru',
    ),
    Item(
      name: 'Matcha Powder',
      price: 85000,
      image: 'lib/images/macha.jpg',
      rating: 5.0,
      stock: 40,
      description: 'Bubuk matcha asli untuk minuman sehat dan dessert.',
      category: 'Minuman',
      weight: '100g',
      condition: 'Baru',
    ),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4EFFC),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple.shade200,
        title: const Text(
          'SuperMarket',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 16),
          Icon(Icons.shopping_cart_outlined, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.deepPurple.shade100,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Row(
              children: [
                Icon(Icons.local_shipping, color: Colors.deepPurple),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Gratis ongkir untuk pembelian di atas Rp 50.000!',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.78,
                ),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ProductCard(item: items[index]);
                },
              ),
            ),
          ),
          const FooterInfo(
              name: 'Khoir Karol Nurzuraidah', nim: '2341760048'),
        ],
      ),
    );
  }
}
