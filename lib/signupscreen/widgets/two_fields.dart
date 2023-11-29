import 'package:flutter/material.dart';
import 'package:nature_app/welcomescreen/widgets/login_field.dart';
import 'package:nature_app/welcomescreen/widgets/login_text.dart';

class TwoFields extends StatelessWidget {
  TwoFields({
    super.key,
    required this.size,
    required this.text,
    required this.fieldtext,
    required this.text2,
    required this.fieldtext2,
    required this.icon,
    required this.icon2,
  });

  final Size size;
  final String text, fieldtext, text2, fieldtext2;
  final Icon icon, icon2;
  final TextEditingController textEditingController = TextEditingController();
  final TextEditingController textEditingController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginText(text: text),
            SizedBox(
              width: size.width / 2 - 16,
              child: LoginField(
                controller: textEditingController2,
                isPasswordtype: false,
                text: fieldtext,
                icon: icon,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginText(text: text2),
            SizedBox(
              width: size.width / 2 - 16,
              child: LoginField(
                controller: textEditingController,
                isPasswordtype: false,
                text: fieldtext2,
                icon: icon2,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
