import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /* soal 1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /* soal 2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Kuil Kiyomizu-Dera',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Higashi-yama, Kyoto, Jepang',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /* soal 3*/
          Icon(
          Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        "Jauhar Maulana A'la, Malang, Indonesia\n\n"
        'Di Kyoto Jepang, tempat wisata memang didominasi dengan tempat wisata berupa kuil. Salah satu kuil yang bisa dikunjungi saat ada disini adalah Kuil Kiyomizu.Kuil ini dibangun pada tahun 1633, nama Kiyamizu sendiri mengambil dari nama air terjun yang mengalir di tebing bukit Kyoto. Arti kiyamizu adalah murni atau suci. Setidaknya Kyoto memiliki sekitar 200 kuil baik besar maupun kecil dan kuil Kiyomizu merupakan kuil utama dan terbesar yang ada di Kyoto. Bangunan di kuil ini terbuat dari kayu dan ada beranda luas yang ditopang oleh kayu berbentuk pilar. Di bawah kuil ini ada pemandangan yang hijau dan ada pepohonan yang rimbun. Kuil ini merupakan kuil Buddha dan termasuk kuil dengan bangunan kuo. Kuil ini telah beberapa kali mengalami kerusakan. Tidak kurang dari 10 kali kuil ini mengalami kerusakan yang terbakar akibat perang maupun dikarenakan bencana alam yang terjadi di Jepang. Saat wisatawan berada di belakang kuil, wisatawan akan menemukan kuil bernama Jishu – Jinja dimana kuil itu dijadikan sebagai kuil dengan dewa perjodohan.',
        style: TextStyle(
          color: Colors.black87),
        textAlign: TextAlign.justify,
        softWrap: true,
        ),
      );
    Color color =  Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    return MaterialApp(
      title: "Jauhar Maulana A'la, 2141720816",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
              Image.asset(
                'images/kuil-kiyomizu.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }
}