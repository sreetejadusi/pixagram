import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PIXAGRAM',
              style: TextStyle(
                  fontSize: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .fontSize!
                          .toDouble() *
                      1.3,
                  letterSpacing: 5),
            ),
            const Text(
              'connecting memories',
              style: TextStyle(fontSize: 11),
            )
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.bell,
              size: 20,
            ))
      ]),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity, height * 0.12);
}
