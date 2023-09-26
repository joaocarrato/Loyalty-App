import 'package:flutter/material.dart';
import 'package:loyalty_app/pages/home_page.dart';
import 'package:loyalty_app/pages/login_page.dart';
import 'package:loyalty_app/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomePage(),
        '/LoginPage': (context) => LoginPage(),
        '/SignUpPage': (context) => const SignUpPage(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
    );
  }
}
