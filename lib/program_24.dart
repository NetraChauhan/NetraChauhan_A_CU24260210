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
        appBar: AppBar(title: const Text('Student Dashboard'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(22, 16, 22, 24),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const CircleAvatar(radius: 32, child: Text('NC', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                      const SizedBox(width: 14),
                      const Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('Netra Chauhan', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)), SizedBox(height: 4), Text('BCA • 5th Semester'), Text('COER University')])),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 14),
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: const [
                  _DashboardCard(icon: Icons.assignment, label: 'Assignments'),
                  _DashboardCard(icon: Icons.calendar_month, label: 'Attendance'),
                  _DashboardCard(icon: Icons.menu_book, label: 'Courses'),
                  _DashboardCard(icon: Icons.grade, label: 'Results'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashboardCard extends StatelessWidget {
  final IconData icon;
  final String label;
  const _DashboardCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 155,
        height: 95,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(icon, size: 30, color: Colors.indigo), const SizedBox(height: 7), Text(label)]),
      ),
    );
  }
}
