import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Stateless Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          // useMaterial3: true,
        ),
        // home: const MyHomePage(title: 'Konverter Suhu'),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Konverter Suhu"),
          ),
          body: Container(
            margin: const EdgeInsets.all(8),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Masukkan Suhu Dalam Celcius"),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Konversi Suhu'),
                )
              ],
            ),
          ),
        ));
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Container(
//         margin: const EdgeInsets.all(8),
//         child: TextFormField(
//           decoration: const InputDecoration(
//             hintText: "Masukkan Suhu Dalam Celcius"
//           ),
//           inputFormatters: [FilteringTextInputFormatter.digitsOnly],
//           keyboardType: TextInputType.number,
//         ),
//       ),
//     );
//   }
// }