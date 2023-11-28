import 'package:flutter/material.dart';
import 'package:nature_app/homescreen/widgets/appbar.dart';
import 'package:nature_app/homescreen/widgets/card_list.dart';
import 'package:nature_app/homescreen/widgets/nav_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Navdrawer(),
      appBar: buildAppbar(),
      body: const CardList(),
    );
  }
}
