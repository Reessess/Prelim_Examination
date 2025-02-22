import 'package:flutter/material.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              'Weather',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            WeatherCard(
              location: 'Dhaka',
              condition: 'Thunder',
              temperature: '20°C',
              icon: Icons.thunderstorm,
              isHighlighted: true,
            ),
            SizedBox(height: 20),
            Text(
              'Around the world',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            WeatherCard(
              location: 'California',
              condition: 'Clear',
              temperature: '6°C',
              icon: Icons.wb_sunny,
            ),
            WeatherCard(
              location: 'Beijing',
              condition: 'Mostly Sunny',
              temperature: '5°C',
              icon: Icons.wb_sunny_outlined,
            ),
            WeatherCard(
              location: 'Moscow',
              condition: 'Cloudy',
              temperature: '-4°C',
              icon: Icons.cloud,
            ),
          ],
        ),
      ),
    );
  }
}

class WeatherCard extends StatelessWidget {
  final String location;
  final String condition;
  final String temperature;
  final IconData icon;
  final bool isHighlighted;

  const WeatherCard({super.key, 
    required this.location,
    required this.condition,
    required this.temperature,
    required this.icon,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.purple : Colors.deepPurple.shade300,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                condition,
                style: TextStyle(fontSize: 14, color: Colors.white70),
              ),
            ],
          ),
          Row(
            children: [
              Icon(icon, color: Colors.white, size: 30),
              SizedBox(width: 10),
              Text(
                temperature,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}