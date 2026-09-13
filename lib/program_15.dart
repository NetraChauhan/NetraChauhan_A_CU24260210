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
        appBar: AppBar(title: const Text('College Home')),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const CircleAvatar(radius: 45, child: Icon(Icons.school, size: 50)),
              const SizedBox(height: 16),
              const Text('COER University', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: const [
                    _Menu(icon: Icons.book, text: 'Courses'),
                    _Menu(icon: Icons.people, text: 'Faculty'),
                    _Menu(icon: Icons.event, text: 'Events'),
                    _Menu(icon: Icons.contact_phone, text: 'Contact'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Menu({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, size: 48), const SizedBox(height: 10), Text(text, style: const TextStyle(fontSize: 18))],
      ),
    );
  }
}
