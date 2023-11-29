import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nature_app/profilescreen/widgets/profile_tabs.dart';

class ProfileList extends StatefulWidget {
  const ProfileList({
    super.key,
  });

  @override
  State<ProfileList> createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Column(
          children: [
            ProfileTabs(
              preicon: const Icon(Icons.account_circle),
              tabTitle: 'Account Details',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.category_rounded),
              tabTitle: 'Your Activity',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.language_rounded),
              tabTitle: 'Languages',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.notification_add_rounded),
              tabTitle: 'Notifications',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.key_rounded),
              tabTitle: 'Change Password',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.settings_rounded),
              tabTitle: 'Settings',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.document_scanner_rounded),
              tabTitle: 'Privacy Policy',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.terminal_rounded),
              tabTitle: 'Terms & Conditions',
              press: () {},
            ),
            ProfileTabs(
              preicon: const Icon(Icons.logout_rounded),
              tabTitle: 'Log Out',
              press: () {
                FirebaseAuth.instance.signOut().then((value) {
                  Navigator.pushNamed(context, '/welcome');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
