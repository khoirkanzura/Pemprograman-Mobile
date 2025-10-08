import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;
  const ItemDetailPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final Color primary = const Color(0xFF8A4FFF); // ungu lembut

    return Scaffold(
      backgroundColor: const Color(0xffF8F5FF),
      appBar: AppBar(
        backgroundColor: primary,
        title: Text(
          item.name,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Gambar produk (diperkecil agar pas di HP kecil)
            Container(
              height: 250,
              width: double.infinity,
              color: Colors.grey[100],
              child: Image.asset(item.image, fit: BoxFit.contain),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item.name,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(
                    'Rp ${item.price}',
                    style: TextStyle(
                      fontSize: 20,
                      color: primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.star,
                          color: Colors.orangeAccent, size: 18),
                      const SizedBox(width: 6),
                      Text('${item.rating}'),
                      const SizedBox(width: 16),
                      const Icon(Icons.inventory_2_outlined,
                          size: 18, color: Colors.green),
                      const SizedBox(width: 6),
                      Text('Stok: ${item.stock}'),
                    ],
                  ),
                  const Divider(height: 28),
                  const Text('Deskripsi Produk',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Text(item.description),
                  const SizedBox(height: 16),
                  const Text('Detail Produk',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  buildDetailRow('Kategori', item.category),
                  buildDetailRow('Berat', item.weight),
                  buildDetailRow('Kondisi', item.condition),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),

      // Bagian tombol di bawah layar
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.06), blurRadius: 6),
            ],
          ),
          child: Row(
            children: [
              // Tombol Tambah Keranjang
              Expanded(
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.shopping_cart_outlined),
                  label: const Text('Tambah Keranjang'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orangeAccent,
                    foregroundColor: Colors.white,
                    minimumSize: const Size.fromHeight(46),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 8),

              // Tombol Beli Sekarang
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: BorderSide(color: primary, width: 1.5),
                    minimumSize: const Size.fromHeight(46),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    'Beli Sekarang',
                    style: TextStyle(
                      color: primary, // teks ungu agar kontras
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(color: Colors.black54)),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
