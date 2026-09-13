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
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                width: 360,
                child: Column(
                  children: [
                    Image.network(
                      'https://picsum.photos/180/120?random=13',
                      height: 110,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.login, size: 80),
                    ),
                    const SizedBox(height: 20),
                    const Text('Login', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 25),
                    const TextField(
                      decoration: InputDecoration(labelText: 'Email', prefixIcon: Icon(Icons.email), border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 16),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password', prefixIcon: Icon(Icons.lock), border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 22),
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Login'))),
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
