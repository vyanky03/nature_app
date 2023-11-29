import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nature_app/signupscreen/widgets/divider.dart';
import 'package:nature_app/welcomescreen/widgets/final_button.dart';
import 'package:nature_app/signupscreen/widgets/image_button.dart';
import 'package:nature_app/welcomescreen/widgets/login_field.dart';
import 'package:nature_app/welcomescreen/widgets/login_text.dart';
import 'package:nature_app/signupscreen/widgets/two_fields.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController number = TextEditingController();
  final TextEditingController passwordcontroller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Register yourself here!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Image.network(
                    'https://t4.ftcdn.net/jpg/05/08/72/31/360_F_508723113_D9KPJ1xQlNc4ISzg4L8kAbSKCA5DwtNi.jpg',
                    height: 200,
                  ),
                ),
                TwoFields(
                  size: size,
                  text: 'First Name',
                  fieldtext: 'Enter First Name',
                  text2: 'Last Name',
                  fieldtext2: 'Enter Last Name',
                  icon: const Icon(Icons.person),
                  icon2: const Icon(Icons.person),
                ),
                const LoginText(text: 'Email ID'),
                LoginField(
                  controller: emailcontroller,
                  isPasswordtype: false,
                  text: "Enter Email ID",
                  icon: const Icon(Icons.mail),
                ),
                TwoFields(
                    size: size,
                    text: 'State',
                    fieldtext: 'Enter State',
                    text2: 'City',
                    fieldtext2: 'Enter City',
                    icon: const Icon(Icons.location_city),
                    icon2: const Icon(Icons.location_city)),
                const LoginText(text: 'Mobile Number'),
                LoginField(
                  controller: number,
                  isPasswordtype: false,
                  text: "Enter Mobile Number",
                  icon: const Icon(Icons.numbers),
                ),
                const LoginText(text: 'Password'),
                LoginField(
                  controller: passwordcontroller,
                  isPasswordtype: true,
                  text: "Enter Password",
                  icon: const Icon(Icons.password),
                ),
                const LoginText(text: 'Confirm Password'),
                LoginField(
                  controller: passwordcontroller2,
                  isPasswordtype: true,
                  text: "Confirm the Password",
                  icon: const Icon(Icons.password),
                ),
                const SizedBox(
                  height: 15,
                ),
                FinalButton(
                  press: () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: emailcontroller.text,
                            password: passwordcontroller.text)
                        .then((value) {
                      Navigator.pushNamed(context, '/profile');
                    }).onError((error, stackTrace) {
                      // ignore: avoid_print
                      print('Error ${error.toString()}');
                    });
                  },
                  text: 'Signup',
                ),
                const SizedBox(
                  height: 15,
                ),
                const DividerItem(),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ImageButton(
                      src: 'assets/images/2021_Facebook_icon.svg',
                      press: () {},
                    ),
                    ImageButton(
                      src: 'assets/images/Google.svg',
                      press: () {},
                    ),
                    ImageButton(
                      src: 'assets/images/Instagram.svg',
                      press: () {},
                    ),
                    ImageButton(
                      src: 'assets/images/X.svg',
                      press: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
