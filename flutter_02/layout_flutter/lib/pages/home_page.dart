import 'package:flutter/material.dart';
import 'item_page.dart';

// Model data item
class Item {
  final String name;
  final int price;

  Item({required this.name, required this.price});
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  // Daftar item
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            // InkWell = memberikan efek ketika ditekan
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,'/item',arguments: item,);
              },
              child: Card(
                child: Container(
                  margin: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(
                        child: Text(
                          'Rp ${item.price}',
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
