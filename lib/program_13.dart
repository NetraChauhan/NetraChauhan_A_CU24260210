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
        appBar: AppBar(title: const Text('Login Screen'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(28, 16, 28, 28),
          child: Center(
            child: SizedBox(
              width: 380,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1516321318423-f06f85e504b3?auto=format&fit=crop&w=900&q=80',
                      width: 180,
                      height: 105,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) => const Icon(Icons.login, size: 80),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(decoration: InputDecoration(labelText: 'Email', border: OutlineInputBorder(), prefixIcon: Icon(Icons.email))),
                  const SizedBox(height: 12),
                  const TextField(obscureText: true, decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder(), prefixIcon: Icon(Icons.lock))),
                  const SizedBox(height: 16),
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Login'))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
