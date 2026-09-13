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
        appBar: AppBar(
          title: const Text('Student Details'),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text('Name: Netra Chauhan', style: TextStyle(fontSize: 22)),
              SizedBox(height: 12),
              Text('Course: BCA', style: TextStyle(fontSize: 22)),
              SizedBox(height: 12),
              Text('Semester: 5th', style: TextStyle(fontSize: 22)),
              SizedBox(height: 12),
              Text('College: COER University', style: TextStyle(fontSize: 22)),
            ],
          ),
        ),
      ),
    );
  }
}
