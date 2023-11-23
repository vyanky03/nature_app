import 'package:flutter/material.dart';
import 'package:nature_app/constants.dart';
import 'package:nature_app/homescreen/widgets/appbar.dart';
import 'package:nature_app/homescreen/widgets/card_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppbar(),
      body: Stack(
        children: [
          //this is used for stack
          SizedBox(
            height: size.height,
            width: size.width,
          ),
          Container(
            height: 10,
            decoration: const BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Row(
                children: [
                  CardContainer(),
                  CardContainer(),
                  CardContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
