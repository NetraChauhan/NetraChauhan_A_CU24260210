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
        appBar: AppBar(title: const Text('Text Styles')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text('Bold Text', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Text('Italic Text', style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic)),
              SizedBox(height: 16),
              Text('Small Font Size', style: TextStyle(fontSize: 16)),
              SizedBox(height: 16),
              Text('Large Font Size', style: TextStyle(fontSize: 32)),
              SizedBox(height: 16),
              Text('Centered Text', textAlign: TextAlign.center, style: TextStyle(fontSize: 22)),
              SizedBox(height: 16),
              Text('Right Aligned Text', textAlign: TextAlign.right, style: TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}
