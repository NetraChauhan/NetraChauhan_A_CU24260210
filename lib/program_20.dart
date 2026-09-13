import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(title: const Text('Food Menu'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
          child: Column(
            children: const [
              _FoodCard(
                name: 'Margherita Pizza',
                price: '₹299',
                imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?auto=format&fit=crop&w=800&q=80',
              ),
              SizedBox(height: 12),
              _FoodCard(
                name: 'Creamy Pasta',
                price: '₹249',
                imageUrl: 'https://images.unsplash.com/photo-1473093295043-cdd812d0e601?auto=format&fit=crop&w=800&q=80',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FoodCard extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;
  const _FoodCard({required this.name, required this.price, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        width: 430,
        child: Row(
          children: [
            Image.network(
              imageUrl,
              width: 150,
              height: 118,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const SizedBox(width: 150, height: 118, child: Icon(Icons.fastfood, size: 60)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Row(children: [const Icon(Icons.star, size: 18, color: Colors.amber), const SizedBox(width: 4), const Text('4.5')]),
                    const SizedBox(height: 5),
                    Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 7),
                    ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.add_shopping_cart, size: 18), label: const Text('Add')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
