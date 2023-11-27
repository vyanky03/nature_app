import 'package:flutter/material.dart';
import 'package:nature_app/profilescreen/profile.dart';
import 'package:nature_app/signupscreen/signup.dart';
import 'package:nature_app/splash_screen.dart';
import 'package:nature_app/welcomescreen/welcome.dart';

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
        '/': (context) => const SplashScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/welcome': (context) => const WelcomeScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Ubuntu'),
    );
  }
}
