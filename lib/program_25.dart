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
        appBar: AppBar(title: const Text('My Profile')),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const CircleAvatar(radius: 55, child: Icon(Icons.person, size: 65)),
              const SizedBox(height: 14),
              const Text('Netra Chauhan', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const Text('BCA Student | UI/UX Enthusiast', style: TextStyle(fontSize: 17)),
              const SizedBox(height: 22),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: Colors.blue.shade50, borderRadius: BorderRadius.circular(16)),
                child: const Column(
                  children: [
                    Row(children: [Icon(Icons.school), SizedBox(width: 12), Text('COER University')]),
                    SizedBox(height: 12),
                    Row(children: [Icon(Icons.email), SizedBox(width: 12), Text('netra@example.com')]),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(child: Padding(padding: EdgeInsets.all(16), child: Column(children: [Icon(Icons.code), Text('Coding')]))),
                  Card(child: Padding(padding: EdgeInsets.all(16), child: Column(children: [Icon(Icons.design_services), Text('Design')]))),
                  Card(child: Padding(padding: EdgeInsets.all(16), child: Column(children: [Icon(Icons.travel_explore), Text('Travel')]))),
                ],
              ),
              const SizedBox(height: 22),
              SizedBox(width: double.infinity, child: ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.contact_mail), label: const Text('Contact Me'))),
            ],
          ),
        ),
      ),
    );
  }
}
