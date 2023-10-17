import 'package:asadah/pages/input_akad_page.dart';
import 'package:asadah/pages/main_page.dart';
import 'package:asadah/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Asadah',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal).copyWith(
          primary: primaryColor,
          secondary: secondaryColor,
          tertiary: ternaryColor,
        ),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}