import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
      name: 'Sugar',
      price: 5000,
      image: 'images/sugar.jpg',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Salt',
      price: 2000,
      image: 'images/salt.jpg',
      stock: 15,
      rating: 4.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue.shade700,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: Colors.grey[50],
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            return _buildProductCard(item, context);
          },
        ),
      ),
    );
  }

  Widget _buildProductCard(Item item, BuildContext context) {
    // Buat tag unik untuk Hero
    final String heroTag = 'hero_${item.name}';

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context, 
            '/item', 
            arguments: {'item': item, 'heroTag': heroTag}
          );
        },
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Widget untuk gambar
            Hero(
              tag: heroTag,
              child: Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                  color: Colors.grey[200],
                ),
                child: Stack(
                  children: [
                    // Image dengan Hero
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(12),
                      ),
                      child: Image.asset(
                        item.image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[300],
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  color: Colors.grey,
                                  size: 32,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'No Image',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    
                    // Rating Badge
                    Positioned(
                      top: 6,
                      right: 6,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 12,
                            ),
                            const SizedBox(width: 2),
                            Text(
                              item.rating.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            
            // Info Produk
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nama Produk dengan Hero untuk text (opsional)
                  Hero(
                    tag: 'title_${item.name}',
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        item.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 4),
                  
                  // Harga dengan Hero
                  Hero(
                    tag: 'price_${item.name}',
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        'Rp ${item.price}',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade700,
                        ),
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 6),
                  
                  // Stock Info
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: item.stock > 5 
                          ? Colors.green.shade50 
                          : Colors.orange.shade50,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: item.stock > 5 
                            ? Colors.green.shade100 
                            : Colors.orange.shade100,
                        width: 1,
                      ),
                    ),
                    child: Text(
                      'Stok: ${item.stock}',
                      style: TextStyle(
                        fontSize: 10,
                        color: item.stock > 5 
                            ? Colors.green.shade800 
                            : Colors.orange.shade800,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}