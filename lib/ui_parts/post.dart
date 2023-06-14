import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pixagram/enums/post.dart';
import 'package:pixagram/enums/user.dart';
import 'package:intl/intl.dart';

class SinglePost extends StatelessWidget {
  const SinglePost({super.key, required this.user, required this.post});
  final User user;
  final Post post;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.network(post.image)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Row(
                children: [
                  ClipOval(
                      child: Image.network(
                    user.profile,
                    width: width * 0.13,
                  )),
                  SizedBox(
                    width: width * 0.03,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.fontSize
                                ?.toDouble(),
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        DateFormat('dd MMM yyyy').format(post.date),
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.ellipsisVertical,
                        color: Colors.white,
                      ))
                ],
              ),
            ]),
          )
        ],
      ),
    );
  }
}
