import 'package:flutter/material.dart';
import 'package:nature_app/feedscreen/widgets/animated_button.dart';
import 'package:nature_app/homescreen/widgets/appbar.dart';
import 'package:nature_app/homescreen/widgets/curver_container.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  // late AnimationController animationController;

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
            Column(
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
            AnimatedButtonClass(),
          ],
        ),
      ),
    );
  }
}
