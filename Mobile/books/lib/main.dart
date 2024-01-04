import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Asynchronous | Jauhar Maulana A'la",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: false,
      ),
      home: const FuturePage(
        title: '',
      ),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key, required this.title});

  final String title;

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              ElevatedButton(
                child: const Text('GO!'),
                onPressed: () {
                  setState(() {});
                  getData().then((value) {
                    result = value.body.toString().substring(0, 450);
                    setState(() {});
                  }).catchError((_) {
                    result = 'An error occured';
                    setState(() {});
                  });
                },
              ),
              const Spacer(),
              Text(result),
              const Spacer(),
              const CircularProgressIndicator(),
              const Spacer(),
            ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/eZbcDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
}
