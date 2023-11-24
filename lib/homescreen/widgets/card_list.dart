import 'package:flutter/material.dart';
import 'package:nature_app/constants.dart';
import 'package:nature_app/homescreen/widgets/card_container.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            padding: EdgeInsets.only(left: 20, top: 20),
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
    );
  }
}
