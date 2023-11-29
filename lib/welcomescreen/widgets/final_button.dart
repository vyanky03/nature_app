import 'package:flutter/material.dart';
import 'package:nature_app/constants.dart';

class FinalButton extends StatelessWidget {
  const FinalButton({
    super.key,
    required this.text,
    required this.press,
  });
  final String text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: press,
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
