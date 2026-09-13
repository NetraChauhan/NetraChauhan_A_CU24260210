import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Row Widget'), centerTitle: true),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(24, 26, 24, 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Home', style: TextStyle(fontSize: 20)),
              Text('About', style: TextStyle(fontSize: 20)),
              Text('Contact', style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
