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
        appBar: AppBar(title: const Text('Icon Widget')),
        body: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, size: 45),
              Icon(Icons.favorite, size: 45),
              Icon(Icons.star, size: 45),
              Icon(Icons.settings, size: 45),
              Icon(Icons.person, size: 45),
            ],
          ),
        ),
      ),
    );
  }
}
