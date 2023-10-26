import 'package:belanja/models/button.dart';
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
        child: ListView(
          children: [
            Column(
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
                          fontSize: 35, // Ukuran font 18 pt
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
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(item.item_desc,
                      textAlign: TextAlign.justify, softWrap: true),
                ),
                Container(
                    color: Colors.red,
                    padding: const EdgeInsets.symmetric(horizontal: 150),
                    margin: const EdgeInsets.only(bottom: 20.0),
                    child: ElevatedButton(
                      style: buttonStyle,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Pesan'),
                    ))
              ],
            )
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
