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
        appBar: AppBar(title: const Text('College Home Screen'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
          child: Column(
            children: [
              Container(
                width: 86,
                height: 86,
                decoration: const BoxDecoration(color: Colors.indigo, shape: BoxShape.circle),
                child: const Center(child: Text('CU', style: TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold))),
              ),
              const SizedBox(height: 10),
              const Text('COER University', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              const SizedBox(height: 18),
              Wrap(
                spacing: 14,
                runSpacing: 14,
                alignment: WrapAlignment.center,
                children: const [
                  _MenuCard(icon: Icons.school, label: 'Courses'),
                  _MenuCard(icon: Icons.apartment, label: 'Departments'),
                  _MenuCard(icon: Icons.event, label: 'Events'),
                  _MenuCard(icon: Icons.contact_phone, label: 'Contact'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  final IconData icon;
  final String label;
  const _MenuCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 145,
        height: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Icon(icon, size: 30, color: Colors.indigo), const SizedBox(height: 6), Text(label)],
        ),
      ),
    );
  }
}
