import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        pic: 'image/ideapad.png',
        name: 'Ideapad Gaming 3',
        review: 4.3,
        stok: 10,
        desc:
            'Lenovo Ideapad Gaming 3 2022 Ryzen 5 6600 8GB 512SSD RTX3050 W11 B8ID',
        item_desc:
            "Spesifikasi unit :\nGraphics : NVIDIA GeForce RTX 3050 4GB GDDR6, Boost Clock 1500MHz, TGP 85W\nProcessor : AMD Ryzen 5 6600H (6C / 12T, 3.3 / 4.5GHz, 3MB L2 / 16MB L3)\nRAM : 8GB SO-DIMM DDR5-4800 (Up to 16GB)\nStorage : 512GB SSD M.2 2242 PCIe 4.0x4 NVMe\nDisplay : 15.6' FHD (1920x1080) IPS 300nitsAnti-glare, 165Hz, 100% sRGB, DC dimmer\nSistem Operasi : Windows 11 Home 64bit + Microsoft Office Home & Student 2021\nWarna : Onyx Grey / Glacier White\nKamera : HD 720p with Privacy Shutter\nAudio : Stereo speakers, 2W x2, Nahimic Audio",
        price: '13.999.000'),
    Item(
        pic: 'image/asustuf.png',
        name: 'Asus ROG Zephyrus',
        review: 4.5,
        stok: 8,
        desc:
            'ASUS ROG ZEPHYRUS G14 GA402RK R9X7B7G-O Ryzen 9 6900HS 16GB 1TB W11',
        item_desc:
            'S[esifikasi unit : \nProcessor : AMD Ryzen 9 6900HS Mobile Processor (8-core/16-thread, 16MB cache, up to 4.9 GHz max boost)\nOperating System : Windows 11 + Office Home and Student 2021\nMemory : 16GBDDR5onboard + 1x DDR5 SO-DIMM slots Max 32GB\nStorage : 1TB M.2 NVMe PCIe 4.0 SSD\nIntergrated GPU : AMD Radeon RX 6800S 8GB GDDR6\nDisplay : 14.0-inch FHD+ 16:10 (1920 x 1200, WUXGA) 144Hz 400 nits IPS-level',
        price: '18.499.000'),
    Item(
        pic: 'image/nitro.png',
        name: 'Acer Nitro 5',
        review: 4.2,
        stok: 4,
        desc:
            'ACER Nitro 5 AN515-58 - RTX3050 i5-12500H 16GB 512SSD WIN11 15.6 144Hz',
        item_desc:
            'Spesifikasi unit : \nGraphics : NVIDIA® GeForce® RTX 3050 with 4GB of GDDR6 (95W)\nProcessor : 12th Gen Intel® Core™ i5-12500H Processor 2.5 GHz (18M Cache, up to 4.5 GHz, 12 cores: 4 P-cores and 8 E-cores)\nMemory : 8GB / 16GB DDR4 (UPGRADE MANUAL)\nStorage : 512GB SSD NVMe\nInch, Res, Ratio, Panel : 15.6" FHD LED IPS 144Hz\nOS : Windows 11 Home\nFREE OFFICE HOME STUDEND',
        price: '14.999.000'),
    Item(
        pic: 'image/omen.png',
        name: 'HP Omen 16',
        review: 4.5,
        stok: 6,
        desc:
            'HP Omen 16-wf0030tx i7-13700HX RTX4060 1TB SSD 16GB Windows11 + OHS',
        item_desc:
            'Spesifikasi unit : \nProcessor: Intel® Core™ i7-13700HX (up to 5.0 GHz with Intel® Turbo Boost Technology, 30 MB L3 cache, 16 cores, 24 threads)\nGraphics: NVIDIA® GeForce RTX™ 4060 Laptop GPU 8GB GDDR6\nMemory: 16 GB DDR5-4800 MHz RAM (2 x 8 GB)\nStorage : 1 TB PCIe® Gen4 NVMe™ TLC M.2 SSD\nDisplay: 40.6 cm (16.1") diagonal, QHD, 240 Hz, 7 ms response time, IPS, micro-edge, anti-glare, Low Blue Light, 300 nits, 100% sRGB\nWebcam: HP True Vision 1080p FHD\nKeyboard: Full-size, 4-zone RGB backlit, shadow black keyboard and 26-Key Rollover Anti-Ghosting Key technology\nWireless: Intel® Wi-Fi 6E AX211 (2x2) and Bluetooth® 5.3 wireless card (supporting gigabit data rate)',
        price: '20.399.000'),
    Item(
      pic: 'image/legion.png',
      name: 'Lenovo Legion Slim 5',
      review: 4.9,
      stok: 3,
      desc:
          'Lenovo Legion Slim 5 RTX4060 Ryzen 7 7840 16GB 512SSD 16.0WQXGA 165Hz Strom Grey Windows 11 + OHS',
      item_desc:
          'Spesifikasi unit : \nGraphics: NVIDIA® GeForce RTX™ 4060 8GB GDDR6, Boost Clock 2370MHz, TGP 140W\nProcessor: AMD Ryzen™ 7 7840HS (8C / 16T, 3.8 / 5.1GHz, 8MB L2 / 16MB L3)\nRAM: 16GB (2x 8GB SO-DIMM DDR5-5600)\nStorage: 512GB SSD M.2 2280 PCIe® 4.0x4 NVMe®\nDisplay: 16" WQXGA (2560x1600) IPS 300nits Anti-glare, 100% sRGB, 165Hz, Dolby® Vision™, FreeSync™, G-SYNC®, Low Blue Light\nSistem Operasi: Windows 11 Home 64bit + Microsoft Office Home & Student 2021\nWarna: Storm Grey\nKamera: FHD 1080p with E-shutter\nAudio: Stereo speakers, 2W x2, Nahimic Audio',
      price: '21.999.000',
    ),
    Item(
        pic: 'image/tufdash.png',
        name: 'Asus TUF Dash F15',
        review: 4.7,
        stok: 5,
        desc:
            'Asus TUF Dash F15 FX516PM-HN024T 15.6" FHD 144Hz i7-11370H 16GB 512GB RTX3060 Win10 Eclipse Gray',
        item_desc:
            'Spesifikasi unit : \nProcessor: Intel® Core™ i7-11370H Processor 3.3 GHz (12M Cache, up to 4.8 GHz, 4 cores)\nGraphics: NVIDIA® GeForce RTX™ 3060 Laptop GPU 6GB GDDR6\nMemory: 16 GB DDR4 3200MHz SDRAM Onboard memory\nStorage: 512GB M.2 NVMe™ PCIe® 3.0 SSD\nDisplay: 15.6-inch FHD (1920 x 1080) 16:9, 144Hz, IPS-level, Adaptive-Sync, Anti-glare display, sRGB: 62.5%, Adobe: 47.34%, Refresh Rate: 144Hz, Response Time: 3ms, Value IPS-level\nWebcam: 720p HD camera\nKeyboard: Backlit Chiclet Keyboard RGB\nWireless: Wi-Fi 6(802.11ax)+Bluetooth 5.2 (Dual band) 2*2',
        price: '19.999.000'),
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
          crossAxisCount: 2,
          mainAxisExtent: 300, // Jumlah kolom dalam GridView
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
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Text(
                            item.desc,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15.0), // Twambahkan padding 10 pixel
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Rp. ${item.price.toString()}',
                            textAlign: TextAlign.start,
                          ),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.orange),
                              Text(item.review.toString()),
                            ],
                          )
                        ],
                      ),
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
