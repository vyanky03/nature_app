import 'package:flutter/material.dart';
import 'package:nature_app/screens/profile.dart';
import 'package:nature_app/screens/signup.dart';
import 'package:nature_app/screens/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/second': (context) => const SignUpScreen(),
        '/home': (context) => const ProfileScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Ubuntu'),
    );
  }
}
