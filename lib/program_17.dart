import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(title: const Text('Student Information Card'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
          child: Center(
            child: Card(
              elevation: 3,
              child: Container(
                width: 350,
                padding: const EdgeInsets.all(22),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: Netra Chauhan', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 10),
                    Text('Roll Number: 243026210', style: TextStyle(fontSize: 18)),
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
      ),
    );
  }
}
