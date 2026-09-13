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
        appBar: AppBar(title: const Text('Student Dashboard')),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                children: [
                  CircleAvatar(radius: 34, child: Icon(Icons.person, size: 40)),
                  SizedBox(width: 15),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Netra Chauhan', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)), Text('BCA - 5th Semester')]),
                ],
              ),
              const SizedBox(height: 25),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 14,
                  mainAxisSpacing: 14,
                  children: const [
                    _Dash(icon: Icons.menu_book, text: 'Subjects'),
                    _Dash(icon: Icons.assignment, text: 'Assignments'),
                    _Dash(icon: Icons.calendar_month, text: 'Attendance'),
                    _Dash(icon: Icons.grade, text: 'Results'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Dash extends StatelessWidget {
  final IconData icon;
  final String text;
  const _Dash({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(icon, size: 48), const SizedBox(height: 10), Text(text, style: const TextStyle(fontSize: 18))]),
    );
  }
}
