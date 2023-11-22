import 'package:flutter/material.dart';
import 'package:nature_app/widgets/profile_tabs.dart';

class ProfileList extends StatelessWidget {
  const ProfileList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Column(
          children: [
            ProfileTabs(
              preicon: Icon(Icons.account_circle),
              tabTitle: 'Account Details',
            ),
            ProfileTabs(
              preicon: Icon(Icons.category_rounded),
              tabTitle: 'Your Activity',
            ),
            ProfileTabs(
              preicon: Icon(Icons.language_rounded),
              tabTitle: 'Languages',
            ),
            ProfileTabs(
              preicon: Icon(Icons.notification_add_rounded),
              tabTitle: 'Notifications',
            ),
            ProfileTabs(
              preicon: Icon(Icons.key_rounded),
              tabTitle: 'Change Password',
            ),
            ProfileTabs(
              preicon: Icon(Icons.settings_rounded),
              tabTitle: 'Settings',
            ),
            ProfileTabs(
              preicon: Icon(Icons.document_scanner_rounded),
              tabTitle: 'Privacy Policy',
            ),
            ProfileTabs(
              preicon: Icon(Icons.terminal_rounded),
              tabTitle: 'Terms & Conditions',
            ),
            ProfileTabs(
              preicon: Icon(Icons.logout_rounded),
              tabTitle: 'Log Out',
            ),
          ],
        ),
      ),
    );
  }
}
