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
        body: SafeArea(
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 60, left: 24, right: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Student Details',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 32),
                  Text('Name: Netra Chauhan', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 14),
                  Text('Course: BCA', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 14),
                  Text('Semester: 5th', style: TextStyle(fontSize: 22)),
                  SizedBox(height: 14),
                  Text('College: COER University', style: TextStyle(fontSize: 22)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
