import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: const Text('Business Card'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 24),
          child: Align(
            alignment: Alignment.topCenter,
            child: Card(
              elevation: 3,
              child: Container(
                width: 380,
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=500&q=80',
                        width: 88,
                        height: 88,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => const Icon(Icons.person, size: 88),
                      ),
                    ),
                    const SizedBox(width: 18),
                    const Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Netra Chauhan', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Row(children: [Icon(Icons.phone, size: 19), SizedBox(width: 7), Text('+91 98765 43210')]),
                          SizedBox(height: 7),
                          Row(children: [Icon(Icons.email, size: 19), SizedBox(width: 7), Expanded(child: Text('netra@example.com'))]),
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
