import 'package:flutter/material.dart';
import 'package:rus_car/pages/welcome_page.dart';

void main() {
  runApp(const MyApp(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Российские автомобили',
      home: WelcomePage(),
    );
  }
}
