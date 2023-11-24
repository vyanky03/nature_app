import 'package:flutter/material.dart';
import 'package:nature_app/homescreen/widgets/appbar.dart';
import 'package:nature_app/homescreen/widgets/curver_container.dart';

class AnimatedFloatButton extends StatefulWidget {
  const AnimatedFloatButton({super.key});

  @override
  State<AnimatedFloatButton> createState() => _AnimatedFloatButtonState();
}

class _AnimatedFloatButtonState extends State<AnimatedFloatButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation degOneTranslationAnimation,
      degTwoTranslationAnimation,
      degThreeTranslationAnimation;
  late Animation rotationAnimation;

  double getRadianfromDegrees(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65),
    ]).animate(animationController);
    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppbar(),
      body: animationWidget(size),
    );
  }

  SizedBox animationWidget(Size size) {
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(children: [
        const CurveContainer(),
        Positioned(
          bottom: 30,
          right: 30,
          child: Stack(
            children: [
              Transform.translate(
                offset: Offset.fromDirection(getRadianfromDegrees(180),
                    degThreeTranslationAnimation.value * 100),
                child: Transform(
                  transform: Matrix4.rotationZ(
                      getRadianfromDegrees(rotationAnimation.value))
                    ..scale(degThreeTranslationAnimation.value),
                  alignment: Alignment.center,
                  child: CirculerButton(
                    color: Colors.blueAccent,
                    height: 50,
                    width: 50,
                    icon: const Icon(
                      Icons.camera,
                      color: Colors.white,
                    ),
                    onClick: () {},
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset.fromDirection(getRadianfromDegrees(225),
                    degTwoTranslationAnimation.value * 100),
                child: Transform(
                  transform: Matrix4.rotationZ(
                      getRadianfromDegrees(rotationAnimation.value))
                    ..scale(degTwoTranslationAnimation.value),
                  alignment: Alignment.center,
                  child: CirculerButton(
                    color: Colors.orangeAccent,
                    height: 50,
                    width: 50,
                    icon: const Icon(
                      Icons.mic,
                      color: Colors.white,
                    ),
                    onClick: () {},
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset.fromDirection(getRadianfromDegrees(270),
                    degOneTranslationAnimation.value * 100),
                child: Transform(
                  transform: Matrix4.rotationZ(
                      getRadianfromDegrees(rotationAnimation.value))
                    ..scale(degOneTranslationAnimation.value),
                  alignment: Alignment.center,
                  child: CirculerButton(
                    color: Colors.greenAccent,
                    height: 50,
                    width: 50,
                    icon: const Icon(
                      Icons.location_on_sharp,
                      color: Colors.white,
                    ),
                    onClick: () {},
                  ),
                ),
              ),
              Transform(
                transform: Matrix4.rotationZ(
                    getRadianfromDegrees(rotationAnimation.value)),
                alignment: Alignment.center,
                child: CirculerButton(
                  color: Colors.redAccent,
                  height: 60,
                  width: 60,
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onClick: () {
                    animationController.isCompleted
                        ? animationController.reverse()
                        : animationController.forward();
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class CirculerButton extends StatelessWidget {
  const CirculerButton(
      {super.key,
      required this.height,
      required this.width,
      required this.icon,
      required this.color,
      required this.onClick});

  final double height, width;
  final Icon icon;
  final Color color;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: IconButton(onPressed: onClick, icon: icon, enableFeedback: true),
    );
  }
}
