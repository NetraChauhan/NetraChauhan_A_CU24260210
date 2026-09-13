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
        appBar: AppBar(title: const Text('Shopping Product'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
          child: Center(
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 3,
              child: SizedBox(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=900&q=80',
                      width: double.infinity,
                      height: 190,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const SizedBox(height: 190, child: Center(child: Icon(Icons.headphones, size: 90))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Wireless Headphones', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 7),
                          const Row(children: [Icon(Icons.star, color: Colors.amber, size: 20), Icon(Icons.star, color: Colors.amber, size: 20), Icon(Icons.star, color: Colors.amber, size: 20), Icon(Icons.star, color: Colors.amber, size: 20), Icon(Icons.star_half, color: Colors.amber, size: 20), SizedBox(width: 8), Text('4.5')]),
                          const SizedBox(height: 8),
                          const Text('₹1,999', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 12),
                          SizedBox(width: double.infinity, child: ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.shopping_cart), label: const Text('Add to Cart'))),
                        ],
                      ),
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
