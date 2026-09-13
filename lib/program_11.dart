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
        appBar: AppBar(title: const Text('Student Profile Card')),
        body: Center(
          child: Container(
            width: 330,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.blue.shade200),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipOval(
                  child: Image.network(
                    'https://i.pravatar.cc/150?img=47',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, size: 90),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Netra Chauhan', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.school), SizedBox(width: 8), Text('BCA - 5th Semester')]),
                const SizedBox(height: 8),
                const Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.location_city), SizedBox(width: 8), Text('COER University')]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
