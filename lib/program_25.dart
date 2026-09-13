import 'dart:convert';
import 'package:flutter/material.dart';
import 'program_11.dart' show profileIllustrationBase64;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: const Text('My Profile'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: SizedBox(
              width: 420,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade50,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 52,
                          backgroundImage: MemoryImage(base64Decode(profileIllustrationBase64)),
                        ),
                        const SizedBox(height: 12),
                        const Text('Netra Chauhan', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 5),
                        const Text('BCA Student • UI/UX Enthusiast'),
                        const SizedBox(height: 6),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, size: 18),
                            SizedBox(width: 5),
                            Text('Roorkee, Uttarakhand'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('About Me', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                          SizedBox(height: 7),
                          Text('I enjoy designing simple digital experiences and learning new technology.'),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Chip(avatar: Icon(Icons.palette, size: 18), label: Text('Design')),
                      Chip(avatar: Icon(Icons.code, size: 18), label: Text('Coding')),
                      Chip(avatar: Icon(Icons.flight_takeoff, size: 18), label: Text('Travel')),
                    ],
                  ),
                  const SizedBox(height: 14),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.mail_outline),
                      label: const Text('Contact Me'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
