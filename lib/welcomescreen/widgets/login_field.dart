import 'package:flutter/material.dart';

class LoginField extends StatelessWidget {
  const LoginField({
    super.key,
    required this.text,
    required this.icon,
    required this.isPasswordtype,
    required this.controller,
  });

  final String text;
  final Icon icon;
  final bool isPasswordtype;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPasswordtype,
      enableSuggestions: !isPasswordtype,
      autocorrect: !isPasswordtype,
      decoration: InputDecoration(
        hintText: text,
        prefixIcon: icon,
        prefixIconColor: const Color.fromARGB(255, 80, 80, 80),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
