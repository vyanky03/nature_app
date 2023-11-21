import 'package:flutter/material.dart';
import 'package:nature_app/screens/signup.dart';
import 'package:nature_app/widgets/final_button.dart';
import 'package:nature_app/widgets/login_field.dart';
import 'package:nature_app/widgets/login_text.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
            const LoginField(
              text: 'Login ID',
              icon: Icon(Icons.person),
            ),
            const SizedBox(
              height: 15,
            ),
            const LoginText(
              text: 'Login ID',
            ),
            const LoginField(
              text: 'Password',
              icon: Icon(Icons.password),
            ),
            const SizedBox(
              height: 15,
            ),
            const FinalButton(text: 'Login'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'New Here?',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUpScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'SignUp',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
