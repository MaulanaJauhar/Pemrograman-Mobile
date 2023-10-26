import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Barang'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[
                Colors.red,
                Colors.purple,
                Colors.blue,
              ],
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal:
                      20.0), // Padding atas dan bawah sebanyak 20.0 pixel
              child: Column(
                children: [
                  Hero(
                    tag: item
                        .name, // Tag Hero harus sama dengan yang digunakan di Homepage
                    child: Image.asset(
                      item.pic,
                      fit: BoxFit.cover, // Menyesuaikan gambar
                    ),
                  ),
                  Text(
                    item.name,
                    style: const TextStyle(
                      fontSize: 40, // Ukuran font 18 pt
                      fontWeight: FontWeight.bold, // Teks menjadi bold
                    ),
                  )
                ],
              ),
            ),
            Text('Harga: Rp. ${item.price.toString()}'),
            Text('Stok Barang: ${item.stok.toString()}'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Text('Rating: '),
                    const Icon(Icons.star, color: Colors.orange),
                    Text(item.review.toString()),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person), label: "Jauhar Maulana A'la"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "2141720186"),
        ],
      ),
    );
  }
}
