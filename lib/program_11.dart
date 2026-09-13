import 'dart:convert';
import 'package:flutter/material.dart';

const String profileIllustrationBase64 = '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';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Student Profile Card'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
          child: Center(
            child: Card(
              elevation: 3,
              child: Container(
                width: 330,
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.memory(
                        base64Decode(profileIllustrationBase64),
                        width: 104,
                        height: 104,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Netra Chauhan',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.school, size: 20),
                        SizedBox(width: 8),
                        Text('BCA - 5th Semester'),
                      ],
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.badge, size: 20),
                        SizedBox(width: 8),
                        Text('COER University'),
                      ],
                    ),
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
