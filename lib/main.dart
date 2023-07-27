import 'package:ecom_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

ThemeData amazonTheme = ThemeData(
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      fontFamily: 'Poppins',
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      fontFamily: 'Poppins',
    ),
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange)
      .copyWith(background: Colors.white)
      .copyWith(secondary: Colors.orange),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce App',
      theme: amazonTheme,
      home: const MyHomePage(),
    );
  }
}
