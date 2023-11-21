import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({
    super.key,
    required this.src,
  });
  final String src;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SvgPicture.asset(
        src,
        height: 40,
      ),
    );
  }
}
