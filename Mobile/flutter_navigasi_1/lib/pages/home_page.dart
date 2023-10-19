import 'package:flutter/material.dart';
import 'package:flutter_navigasi_1/models/item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Item> items = [
    Item(
        link:
            'https://p3-ofp.static.pub/fes/cms/2022/02/14/pthm2czqx1e10iemxpp76noaqbkvp0447773.png',
        name: 'Ideapad Gaming 3',
        review: '4.3',
        stok: 10,
        price: "US\$ 757,43"),
    Item(
        link:
            'https://dlcdnwebimgs.asus.com/gain/98AA0AFE-420A-4EE7-AAE2-6E813FA6A7CE/w1000/h732',
        name: 'Asus ROG Zephyrus',
        review: '4.5',
        stok: 8,
        price: 'US\$ 1262,38'),
    Item(
        link:
            'https://media.croma.com/image/upload/v1668663197/Croma%20Assets/Computers%20Peripherals/Laptop/Images/262706_0_wog1el.png',
        name: 'Acer Nitro 5',
        review: '4.2',
        stok: 4,
        price: 'US\$ 946,78'),
  ];
  final routeName = '/item';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigasi Toko Flutter'),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Material(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routeName, arguments: item);
                },
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Expanded(child: Image.network(item.link.toString())),
                        Expanded(child: Text(item.name.toString())),
                        Expanded(
                            child: Container(
                                child: Row(
                          children: [
                            const Icon(Icons.star, color: Colors.red),
                            Text(item.review.toString())
                          ],
                        ))),
                        Expanded(child: Text(item.stok.toString())),
                        Expanded(
                          child: Text(
                            item.price.toString(),
                            // textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
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
