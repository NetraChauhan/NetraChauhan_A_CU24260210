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
        appBar: AppBar(title: const Text('Business Card')),
        body: Center(
          child: Card(
            elevation: 6,
            margin: const EdgeInsets.all(24),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://i.pravatar.cc/150?img=32',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, size: 90),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text('Netra Chauhan', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 14),
                  const Row(mainAxisSize: MainAxisSize.min, children: [Icon(Icons.phone), SizedBox(width: 10), Text('+91 98765 43210')]),
                  const SizedBox(height: 10),
                  const Row(mainAxisSize: MainAxisSize.min, children: [Icon(Icons.email), SizedBox(width: 10), Text('netra@example.com')]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
