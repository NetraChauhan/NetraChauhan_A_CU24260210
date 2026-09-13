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
        appBar: AppBar(title: const Text('Shopping Product')),
        body: Center(
          child: Card(
            elevation: 6,
            margin: const EdgeInsets.all(24),
            child: SizedBox(
              width: 340,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.network(
                      'https://picsum.photos/300/200?random=23',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.shopping_bag, size: 100),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text('Smart Backpack', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), Icon(Icons.favorite_border)],
                    ),
                    const SizedBox(height: 10),
                    const Align(alignment: Alignment.centerLeft, child: Text('₹1,499', style: TextStyle(fontSize: 20))),
                    const SizedBox(height: 8),
                    const Row(children: [Icon(Icons.star, size: 20), Icon(Icons.star, size: 20), Icon(Icons.star, size: 20), Icon(Icons.star, size: 20), Icon(Icons.star_half, size: 20), SizedBox(width: 8), Text('4.5')]),
                    const SizedBox(height: 18),
                    SizedBox(width: double.infinity, child: ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.shopping_cart), label: const Text('Add to Cart'))),
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
