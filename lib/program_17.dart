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
        appBar: AppBar(title: const Text('Student Information')),
        body: Center(
          child: Card(
            elevation: 6,
            margin: const EdgeInsets.all(24),
            child: const Padding(
              padding: EdgeInsets.all(28),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Student Information', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Divider(height: 30),
                  Text('Name: Netra Chauhan', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Roll Number: 243026XXX', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Course: BCA', style: TextStyle(fontSize: 18)),
                  SizedBox(height: 10),
                  Text('Semester: 5th', style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
