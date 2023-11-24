import 'package:flutter/material.dart';
import 'package:nature_app/homescreen/widgets/appbar.dart';
import 'package:nature_app/homescreen/widgets/card_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppbar(),
      body: const CardList(),
    );
  }
}
