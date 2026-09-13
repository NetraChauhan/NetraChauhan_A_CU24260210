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
        appBar: AppBar(title: const Text('Weather Information')),
        body: Center(
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(24),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [Icon(Icons.location_on), Text('Haridwar, Uttarakhand', style: TextStyle(fontSize: 20))]),
                  SizedBox(height: 24),
                  Icon(Icons.wb_sunny, size: 90),
                  SizedBox(height: 12),
                  Text('31°C', style: TextStyle(fontSize: 46, fontWeight: FontWeight.bold)),
                  Text('Sunny', style: TextStyle(fontSize: 22)),
                  Divider(height: 35),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(children: [Icon(Icons.water_drop), Text('Humidity'), Text('45%')]),
                      Column(children: [Icon(Icons.air), Text('Wind'), Text('12 km/h')]),
                      Column(children: [Icon(Icons.thermostat), Text('Feels Like'), Text('33°C')]),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
