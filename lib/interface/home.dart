import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:pixagram/enums/post.dart';
import 'package:pixagram/enums/user.dart';
import 'package:pixagram/ui_parts/appbar.dart';
import 'package:pixagram/ui_parts/post.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: kToolbarHeight * 1.5,
          backgroundColor: Colors.white,
          flexibleSpace: CustomAppBar(
            height: MediaQuery.of(context).size.height,
          ),
        ),
        SliverAppBar(
          backgroundColor: Colors.white,
          toolbarHeight: kBottomNavigationBarHeight * 1.4,
          flexibleSpace: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Story(),
                SizedBox(
                  width: 12,
                ),
                Story(),
                SizedBox(
                  width: 12,
                ),
                Story(),
                SizedBox(
                  width: 12,
                ),
                Story(),
                SizedBox(
                  width: 12,
                ),
                Story(),
              ],
            ),
          ),
        ),
        SliverList.builder(
          itemBuilder: (context, index) {
            return SinglePost(
              user: User(
                  name: 'Sree Teja Dusi',
                  profile:
                      'https://media.licdn.com/dms/image/D5603AQEDCiL9MlzEzQ/profile-displayphoto-shrink_200_200/0/1680166995219?e=1692230400&v=beta&t=mWO7hVnslbzXZer-6Y_L1eUMtvQ0EOHJOLU4aGxqD_E',
                  followers: 200,
                  following: 20,
                  pronoun: 'He/Him',
                  location: 'Vishakhapatnam',
                  bio: 'Lorem ipsum dolor sit amet consectur lol lmao haha'),
              post: Post(
                image:
                    'https://www.cypressgreen.in/blog/wp-content/uploads/2021/03/food.jpg',
                caption: 'We are Hiring!',
                date: DateTime.now().subtract(
                  const Duration(minutes: 48),
                ),
              ),
            );
          },
          itemCount: 3,
        )
      ]),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -4),
              blurRadius: 15,
              color: Colors.black.withOpacity(0.15),
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      height: kBottomNavigationBarHeight * 1.2,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const Icon(
          FeatherIcons.home,
          size: 20,
        ),
        const Icon(
          FeatherIcons.messageCircle,
          size: 20,
        ),
        Transform.translate(
          offset: const Offset(0, -16),
          child: Transform.rotate(
            angle: 45,
            child: Transform.translate(
              offset: const Offset(-2, -2),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(23),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 12,
                        color: Colors.black.withOpacity(0.25),
                      )
                    ]),
                child: Transform.rotate(
                  angle: -45,
                  child: const Icon(
                    FeatherIcons.plusCircle,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        const Icon(
          FeatherIcons.heart,
          size: 20,
        ),
        const Icon(
          FeatherIcons.user,
          size: 20,
        ),
      ]),
    );
  }
}

class Story extends StatelessWidget {
  const Story({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 1.0,
        child: Stack(
          children: [
            Image.network(
              "https://media.licdn.com/dms/image/D5603AQEDCiL9MlzEzQ/profile-displayphoto-shrink_200_200/0/1680166995219?e=1692230400&v=beta&t=mWO7hVnslbzXZer-6Y_L1eUMtvQ0EOHJOLU4aGxqD_E",
              fit: BoxFit.cover,
            ),
            Container(
              color: Color(0xFF9E391D).withOpacity(0.6),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2),
                    shape: BoxShape.circle),
                child: ClipOval(
                  child: Image.network(
                    "https://media.licdn.com/dms/image/D5603AQEDCiL9MlzEzQ/profile-displayphoto-shrink_200_200/0/1680166995219?e=1692230400&v=beta&t=mWO7hVnslbzXZer-6Y_L1eUMtvQ0EOHJOLU4aGxqD_E",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
