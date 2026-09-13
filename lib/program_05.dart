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
        appBar: AppBar(title: const Text('Different Icons'), centerTitle: true),
        body: const Padding(
          padding: EdgeInsets.fromLTRB(24, 22, 24, 24),
          child: Wrap(
            spacing: 34,
            runSpacing: 24,
            alignment: WrapAlignment.center,
            children: [
              _IconItem(icon: Icons.home, label: 'Home'),
              _IconItem(icon: Icons.favorite, label: 'Favorite'),
              _IconItem(icon: Icons.star, label: 'Star'),
              _IconItem(icon: Icons.settings, label: 'Settings'),
              _IconItem(icon: Icons.person, label: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}

class _IconItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _IconItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 46, color: Colors.indigo),
        const SizedBox(height: 6),
        Text(label),
      ],
    );
  }
}
