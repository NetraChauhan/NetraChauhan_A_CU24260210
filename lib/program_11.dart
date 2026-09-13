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
        appBar: AppBar(title: const Text('Student Profile Card'), centerTitle: true),
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
                      child: Image.network(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=500&q=80',
                        width: 92,
                        height: 92,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, size: 92),
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Text('Netra Chauhan', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.school, size: 20), SizedBox(width: 8), Text('BCA - 5th Semester')],
                    ),
                    const SizedBox(height: 6),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.badge, size: 20), SizedBox(width: 8), Text('COER University')],
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
