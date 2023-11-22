import 'package:flutter/material.dart';

class ProfileAchievements extends StatelessWidget {
  const ProfileAchievements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 25),
      child: Column(
        children: [
          Text(
            '10',
            style: TextStyle(
              fontSize: 35,
              // color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            'Plants',
            style: TextStyle(
              fontSize: 20,
              // color: Colors.white,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
