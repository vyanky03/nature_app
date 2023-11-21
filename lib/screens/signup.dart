import 'package:flutter/material.dart';
import 'package:nature_app/widgets/divider.dart';
import 'package:nature_app/widgets/final_button.dart';
import 'package:nature_app/widgets/image_button.dart';
import 'package:nature_app/widgets/login_field.dart';
import 'package:nature_app/widgets/login_text.dart';
import 'package:nature_app/widgets/two_fields.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Text(
                      'Register yourself here!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
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
                const LoginField(
                  text: "Enter Email ID",
                  icon: Icon(Icons.mail),
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
                const LoginField(
                  text: "Enter Mobile Number",
                  icon: Icon(Icons.numbers),
                ),
                const LoginText(text: 'Password'),
                const LoginField(
                  text: "Enter PasswordD",
                  icon: Icon(Icons.password),
                ),
                const LoginText(text: 'Password'),
                const LoginField(
                  text: "Enter Password",
                  icon: Icon(Icons.password),
                ),
                const SizedBox(
                  height: 15,
                ),
                const FinalButton(
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
