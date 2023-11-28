import 'package:flutter/material.dart';
import 'package:nature_app/constants.dart';

AppBar buildAppbar() {
  return AppBar(
    title: const Text('The Nature App'),
    centerTitle: true,
    backgroundColor: bgColor,
    actions: const [
      Icon(Icons.shopping_cart),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Icon(Icons.notifications),
      ),
    ],
  );
}
