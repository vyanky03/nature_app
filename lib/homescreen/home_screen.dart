import 'package:flutter/material.dart';
import 'package:nature_app/homescreen/widgets/appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
    );
  }
}
