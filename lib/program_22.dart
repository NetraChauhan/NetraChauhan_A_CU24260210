import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.lightBlue),
      home: Scaffold(
        appBar: AppBar(title: const Text('Weather Information'), centerTitle: true),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(24, 18, 24, 24),
          child: Center(
            child: Card(
              elevation: 3,
              child: Container(
                width: 380,
                padding: const EdgeInsets.all(22),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.location_on), SizedBox(width: 6), Text('Roorkee, Uttarakhand', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))]),
                    SizedBox(height: 12),
                    Icon(Icons.wb_sunny, size: 72, color: Colors.orange),
                    SizedBox(height: 4),
                    Text('28°C', style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold)),
                    Text('Sunny', style: TextStyle(fontSize: 19)),
                    SizedBox(height: 18),
                    Divider(),
                    SizedBox(height: 10),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                      _WeatherDetail(icon: Icons.water_drop, label: 'Humidity', value: '58%'),
                      _WeatherDetail(icon: Icons.air, label: 'Wind', value: '11 km/h'),
                      _WeatherDetail(icon: Icons.thermostat, label: 'Feels like', value: '30°C'),
                    ]),
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

class _WeatherDetail extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  const _WeatherDetail({required this.icon, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(children: [Icon(icon, size: 24), const SizedBox(height: 5), Text(label, style: const TextStyle(fontSize: 12)), Text(value, style: const TextStyle(fontWeight: FontWeight.bold))]);
  }
}
