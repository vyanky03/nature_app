import 'package:flutter/material.dart';
import '../../constants.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: Column(
        children: [
          Container(
            height: size.height * 0.25,
            width: size.width * 0.45,
            decoration: const BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
          ),
          Container(
            height: size.height * 0.08,
            width: size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              boxShadow: [
                BoxShadow(
                  blurRadius: 50,
                  offset: const Offset(0, 10),
                  color: bgColor.withOpacity(0.23),
                ),
              ],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
