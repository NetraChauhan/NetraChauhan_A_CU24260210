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
        appBar: AppBar(title: const Text('Products')),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: const [
            _Product(name: 'Laptop', price: '₹55,000', icon: Icons.laptop),
            _Product(name: 'Headphones', price: '₹2,000', icon: Icons.headphones),
            _Product(name: 'Smart Watch', price: '₹3,500', icon: Icons.watch),
          ],
        ),
      ),
    );
  }
}

class _Product extends StatelessWidget {
  final String name;
  final String price;
  final IconData icon;
  const _Product({required this.name, required this.price, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 14),
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Icon(icon, size: 45),
          title: Text(name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text(price),
          trailing: const Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
