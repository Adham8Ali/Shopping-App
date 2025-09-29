import 'package:flutter/material.dart';
import 'package:shopping_app/registration_page.dart';

void main() {
  runApp(const shoppingApp());
}

class shoppingApp extends StatelessWidget {
  const shoppingApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const RegistrationPage(),
    );
  }
}
