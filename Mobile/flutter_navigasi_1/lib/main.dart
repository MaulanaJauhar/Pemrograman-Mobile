import 'package:flutter/material.dart';
import 'package:flutter_navigasi_1/pages/home_page.dart';
import 'package:flutter_navigasi_1/pages/item_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => const ItemPage(),
      },
    );
  }
}
