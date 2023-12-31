import 'package:flutter/material.dart';

class ProfileTabs extends StatelessWidget {
  const ProfileTabs({
    super.key,
    required this.tabTitle,
    required this.preicon,
    required this.press,
  });

  final String tabTitle;
  final Icon preicon;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: GestureDetector(
            onTap: press,
            child: Row(
              children: [
                preicon,
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    tabTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(1, 0),
                    child: Icon(
                      Icons.navigate_next,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.black,
          thickness: 1,
        ),
      ],
    );
  }
}
