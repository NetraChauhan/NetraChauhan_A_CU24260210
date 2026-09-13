import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Center and Align')),
        body: Stack(
          children: [
            const Center(
              child: Text('Center', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(padding: EdgeInsets.all(20), child: Text('Top Left', style: TextStyle(fontSize: 20))),
            ),
            const Align(
              alignment: Alignment.topRight,
              child: Padding(padding: EdgeInsets.all(20), child: Text('Top Right', style: TextStyle(fontSize: 20))),
            ),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Padding(padding: EdgeInsets.all(20), child: Text('Bottom Left', style: TextStyle(fontSize: 20))),
            ),
            const Align(
              alignment: Alignment.bottomRight,
              child: Padding(padding: EdgeInsets.all(20), child: Text('Bottom Right', style: TextStyle(fontSize: 20))),
            ),
          ],
        ),
      ),
    );
  }
}
