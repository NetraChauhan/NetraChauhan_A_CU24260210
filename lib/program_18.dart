import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Padding and Margin'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                color: Colors.blue.shade100,
                child: const Padding(
                  padding: EdgeInsets.all(22),
                  child: Text('This box has outer margin and inner padding.', style: TextStyle(fontSize: 19)),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                color: Colors.green.shade100,
                child: const Text('Different margin and padding values', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
