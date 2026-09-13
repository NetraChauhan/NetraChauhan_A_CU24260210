import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Column Widget'), centerTitle: true),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(24, 22, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Flutter', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              Text('Dart', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              Text('Mobile Application', style: TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}
