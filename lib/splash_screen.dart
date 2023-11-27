import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nature_app/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  static const String keyLogin = 'Login';
  @override
  void initState() {
    super.initState();

    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: const Center(
          child: Text(
            'Nature App',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: bgColor,
            ),
          ),
        ),
      ),
    );
  }

  void whereToGo() async {
    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool(keyLogin);

    Timer(
      const Duration(seconds: 2),
      () {
        if (isLoggedIn != null) {
          if (isLoggedIn) {
            Navigator.pushReplacementNamed(context, '/profile');
          } else {
            Navigator.pushReplacementNamed(context, '/welcome');
          }
        } else {
          Navigator.pushReplacementNamed(context, '/welcome');
        }
      },
    );
  }
}
