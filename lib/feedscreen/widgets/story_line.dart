import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class StoryLine extends StatelessWidget {
  const StoryLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 23),
        child: Row(
          children: [
            SvgPicture.asset(
              'assets/images/feed.svg',
              height: 60,
            ),
            const SizedBox(
              height: 60,
              child: VerticalDivider(
                thickness: 1,
                color: Colors.black,
              ),
            ),
            const StoryImage(
              src: 'assets/images/feed.svg',
            ),
            const StoryImage(
              src: 'assets/images/2021_Facebook_icon.svg',
            ),
            const StoryImage(
              src: 'assets/images/Google.svg',
            ),
            const StoryImage(
              src: 'assets/images/X.svg',
            ),
            const StoryImage(
              src: 'assets/images/Instagram.svg',
            ),
          ],
        ),
      ),
    );
  }
}

class StoryImage extends StatelessWidget {
  const StoryImage({
    super.key,
    required this.src,
  });

  final String src;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: SvgPicture.asset(
        src,
        height: 60,
      ),
    );
  }
}
