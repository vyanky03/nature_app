import 'package:flutter/material.dart';
import 'package:nature_app/feedscreen/widgets/animaton_widget.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnimatedFloatButton(),
    );
  }
}
