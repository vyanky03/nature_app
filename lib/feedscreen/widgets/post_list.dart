import 'package:flutter/material.dart';
import 'package:nature_app/feedscreen/widgets/post_details.dart';

class PostList extends StatelessWidget {
  const PostList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, top: 110),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            PostDetails(
              name: 'Vyankatesh Kshatriya',
              postimg: 'assets/images/Google.svg',
            ),
            PostDetails(
              name: 'Vyankatesh Kshatriya',
              postimg: 'assets/images/Google.svg',
            ),
            PostDetails(
              name: 'Vyankatesh Kshatriya',
              postimg: 'assets/images/Google.svg',
            ),
            PostDetails(
              name: 'Vyankatesh Kshatriya',
              postimg: 'assets/images/Google.svg',
            ),
          ],
        ),
      ),
    );
  }
}
