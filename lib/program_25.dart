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
        appBar: AppBar(title: const Text('Personal Profile'), centerTitle: true),
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(22, 16, 22, 24),
          child: Center(
            child: SizedBox(
              width: 430,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(color: Colors.deepPurple.shade50, borderRadius: BorderRadius.circular(18)),
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
                        const SizedBox(width: 16),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Netra Chauhan', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                              SizedBox(height: 5),
                              Row(children: [Icon(Icons.school, size: 19), SizedBox(width: 6), Text('BCA Student')]),
                              SizedBox(height: 4),
                              Row(children: [Icon(Icons.location_on, size: 19), SizedBox(width: 6), Text('Roorkee, Uttarakhand')]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('About Me', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text('I am a BCA student interested in UI/UX design, technology, and creating simple digital experiences.', style: TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Column(children: [Icon(Icons.palette), SizedBox(height: 5), Text('Design')]),
                          Column(children: [Icon(Icons.code), SizedBox(height: 5), Text('Coding')]),
                          Column(children: [Icon(Icons.eco), SizedBox(height: 5), Text('Gardening')]),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  SizedBox(width: double.infinity, child: ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.mail), label: const Text('Contact Me'))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
