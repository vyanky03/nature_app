import 'package:flutter/material.dart';
import 'package:nature_app/homescreen/widgets/card_container.dart';
import 'package:nature_app/homescreen/widgets/curver_container.dart';

class CardList extends StatelessWidget {
  const CardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CurveContainer(),
        SingleChildScrollView(
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
