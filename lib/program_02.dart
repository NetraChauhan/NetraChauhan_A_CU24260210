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
        appBar: AppBar(title: const Text('Student Details')),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Name: Netra Chauhan', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              Text('Course: BCA', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              Text('Semester: 5th', style: TextStyle(fontSize: 22)),
              SizedBox(height: 10),
              Text('College: COER University', style: TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}
