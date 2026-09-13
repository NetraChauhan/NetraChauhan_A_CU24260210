import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Container Widget'), centerTitle: true),
        body: Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: 180,
            width: 300,
            margin: const EdgeInsets.only(top: 22),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade100,
              border: Border.all(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.circular(18),
              boxShadow: const [
                BoxShadow(blurRadius: 8, offset: Offset(2, 3), color: Colors.black26),
              ],
            ),
            child: const Center(
              child: Text(
                'Customized Container',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
