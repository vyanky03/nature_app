import 'package:flutter/material.dart';

import '../../constants.dart';

class CurveContainer extends StatelessWidget {
  const CurveContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      decoration: const BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
    );
  }
}
