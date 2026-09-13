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
        appBar: AppBar(title: const Text('Three Buttons'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
          child: Wrap(
            spacing: 14,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: const Text('Submit')),
              OutlinedButton(onPressed: () {}, child: const Text('Reset')),
              TextButton(onPressed: () {}, child: const Text('Cancel')),
            ],
          ),
        ),
      ),
    );
  }
}
