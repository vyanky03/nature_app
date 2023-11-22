import 'package:flutter/material.dart';
import 'package:nature_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Nature App'),
        centerTitle: true,
        leading: const Icon(Icons.menu),
        backgroundColor: bgColor,
      ),
      body: const Center(child: Text('Home Screen')),
    );
  }
}
