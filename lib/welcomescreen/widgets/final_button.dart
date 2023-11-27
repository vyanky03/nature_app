import 'package:flutter/material.dart';
import 'package:nature_app/constants.dart';
import 'package:nature_app/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FinalButton extends StatelessWidget {
  const FinalButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          var sharedPref = await SharedPreferences.getInstance();
          sharedPref.setBool(SplashScreenState.keyLogin, true);
          // ignore: use_build_context_synchronously
          Navigator.pushNamed(context, '/profile');
        },
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          elevation: const MaterialStatePropertyAll(3),
          backgroundColor: const MaterialStatePropertyAll(
            primaryColor,
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
