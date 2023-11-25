import 'package:flutter/material.dart';
import 'package:nature_app/feedscreen/widgets/animated_button.dart';
import 'package:nature_app/feedscreen/widgets/post_list.dart';
import 'package:nature_app/feedscreen/widgets/story_line.dart';
import 'package:nature_app/homescreen/widgets/appbar.dart';
import 'package:nature_app/homescreen/widgets/curver_container.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppbar(),
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: const Stack(
          children: [
            CurveContainer(),
            PostList(),
            StoryLine(),
            AnimatedButtonClass(),
          ],
        ),
      ),
    );
  }
}
