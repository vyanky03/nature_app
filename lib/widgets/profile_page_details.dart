import 'package:flutter/material.dart';
import 'package:nature_app/widgets/profile_acheivements.dart';
import 'package:nature_app/widgets/profile_list.dart';
import 'package:nature_app/widgets/profile_name.dart';

class ProfilePageDetails extends StatelessWidget {
  const ProfilePageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const ProfileName(),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileAchievements(),
              ProfileAchievements(),
              ProfileAchievements(),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: const ProfileList(),
            ),
          ),
        ],
      ),
    );
  }
}
