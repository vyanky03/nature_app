import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nature_app/welcomescreen/widgets/final_button.dart';
import 'package:nature_app/welcomescreen/widgets/login_field.dart';
import 'package:nature_app/welcomescreen/widgets/login_text.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://t4.ftcdn.net/jpg/05/08/72/31/360_F_508723113_D9KPJ1xQlNc4ISzg4L8kAbSKCA5DwtNi.jpg',
                height: 150,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'For The Nature',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Login to your account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const LoginText(
                text: 'Login ID',
              ),
              LoginField(
                controller: emailcontroller,
                isPasswordtype: false,
                text: 'Login ID',
                icon: const Icon(Icons.person),
              ),
              const SizedBox(
                height: 15,
              ),
              const LoginText(
                text: 'Login ID',
              ),
              LoginField(
                controller: passwordcontroller,
                isPasswordtype: true,
                text: 'Password',
                icon: const Icon(Icons.password),
              ),
              const SizedBox(
                height: 15,
              ),
              FinalButton(
                press: () {
                  FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: emailcontroller.text,
                          password: passwordcontroller.text)
                      .then((value) {
                    Navigator.pushNamed(context, '/profile');
                  }).onError((error, stackTrace) {
                    // ignore: avoid_print
                    print('Error${error.toString()}');
                  });
                },
                text: 'Login',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New Here?',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      'SignUp',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
