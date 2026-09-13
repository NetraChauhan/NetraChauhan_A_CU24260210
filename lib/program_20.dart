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
        appBar: AppBar(title: const Text('Food Menu')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            _Food(name: 'Veg Burger', price: '₹120', icon: Icons.lunch_dining),
            _Food(name: 'Pizza', price: '₹250', icon: Icons.local_pizza),
            _Food(name: 'Cold Coffee', price: '₹100', icon: Icons.local_cafe),
          ],
        ),
      ),
    );
  }
}

class _Food extends StatelessWidget {
  final String name;
  final String price;
  final IconData icon;
  const _Food({required this.name, required this.price, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Row(
          children: [
            Container(
              width: 85,
              height: 85,
              color: Colors.orange.shade50,
              child: Icon(icon, size: 52),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), const SizedBox(height: 6), Text(price)],
              ),
            ),
            ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.add), label: const Text('Add')),
          ],
        ),
      ),
    );
  }
}
