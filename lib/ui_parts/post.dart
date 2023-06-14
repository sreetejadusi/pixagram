import 'package:feather_icons/feather_icons.dart';
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
    return AspectRatio(
      aspectRatio: 1.0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Stack(
            children: [
              Image.network(
                post.image,
                alignment: Alignment.center,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12.0).copyWith(bottom: 48),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF9E391D),
                            Colors.transparent,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                    ),
                    child: Row(
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
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              user.name,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.white),
                            ),
                            Text(
                              (post.date
                                          .difference(DateTime.now())
                                          .inMinutes
                                          .abs() >=
                                      60
                                  ? post.date
                                              .difference(DateTime.now())
                                              .inMinutes
                                              .abs() >=
                                          120
                                      ? ("${post.date.difference(DateTime.now()).inHours.abs()} hours ago")
                                      : ("${post.date.difference(DateTime.now()).inHours.abs()} hour ago")
                                  : ("${post.date.difference(DateTime.now()).inMinutes.abs()} minutes ago")),
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 12),
                            )
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert_rounded,
                              color: Colors.white,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  color: Color(0xFF9E391D),
                  child: Row(children: [
                    Expanded(
                      child: Text(
                        "Bound by friendship, driven by innovation. Four minds, endless possibilities,",
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall
                            ?.copyWith(color: Colors.white),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Icon(
                      FeatherIcons.messageCircle,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      FeatherIcons.heart,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
