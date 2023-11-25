import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PostDetails extends StatelessWidget {
  const PostDetails({
    super.key,
    required this.name,
    required this.postimg,
  });

  final String name, postimg;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const CircleAvatar(
              radius: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                name,
                style:
                    const TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.4,
          width: size.width * 0.9,
          child: SvgPicture.asset(postimg),
        ),
        SizedBox(
          width: size.width * 0.5,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.favorite_outline_rounded, size: 40),
              Icon(Icons.comment_rounded, size: 40),
              Icon(Icons.send_rounded, size: 40),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Add Comment...',
          style: TextStyle(fontSize: 17),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
