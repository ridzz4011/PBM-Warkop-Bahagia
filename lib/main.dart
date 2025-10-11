import 'package:flutter/material.dart';
import 'package:warkop_app/pages/details.dart';
import 'package:warkop_app/pages/home.dart';
import 'package:warkop_app/pages/menu.dart';

void main() {
  runApp(const WarkopApp());
}

class WarkopApp extends StatelessWidget {
  const WarkopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
      routes: {
        '/landing': (context) => const LandingPage(),
        '/menu': (context) => const MenuPage(),
      },
    );
  }
}
