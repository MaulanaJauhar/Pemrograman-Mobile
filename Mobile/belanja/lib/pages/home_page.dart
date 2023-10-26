import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        pic: 'image/ideapad.png',
        name: 'Ideapad Gaming 3',
        review: 4.3,
        stok: 10,
        price: '13.999.000'),
    Item(
        pic: 'image/asustuf.png',
        name: 'Asus ROG Zephyrus',
        review: 4.5,
        stok: 8,
        price: '18.499.000'),
    Item(
        pic: 'image/nitro.png',
        name: 'Acer Nitro 5',
        review: 4.2,
        stok: 4,
        price: '14.999.000'),
    Item(
        pic: 'image/omen.png',
        name: 'HP Omen 16',
        review: 4.5,
        stok: 6,
        price: '20.399.000'),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belanja Laptop Gaming'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[Colors.red, Colors.purple, Colors.blue],
            ),
          ),
        ),
        toolbarOpacity: 0.8, // Opacity toolbar menjadi 0.8
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Jumlah kolom dalam GridView
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, '/item', arguments: item);
            },
            child: Hero(
              tag: item.name, // Tag Hero harus unik untuk setiap item
              child: Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        item.pic.toString(),
                        fit: BoxFit.cover, // Menyesuaikan gambar dengan baik
                      ),
                    ),
                    Text(
                      item.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold, // Teks menjadi bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0), // Twambahkan padding 10 pixel
                      child: Text('Harga: Rp. ${item.price.toString()}'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
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
