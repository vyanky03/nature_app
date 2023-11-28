import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nature_app/profilescreen/profile.dart';
import 'package:nature_app/signupscreen/signup.dart';
import 'package:nature_app/splash_screen.dart';
import 'package:nature_app/welcomescreen/welcome.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
