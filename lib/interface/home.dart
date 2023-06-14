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
      appBar: CustomAppBar(
        height: MediaQuery.of(context).size.height,
      ),
      body: Container(
        child: SinglePost(
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
                    'https://marketplace.canva.com/EAFHWa-3jfU/2/0/1600w/canva-orange-and-pink-gradient-modern-and-cool-instagram-post-k6Y2pej_xkg.jpg',
                caption: 'We are Hiring!',
                date: DateTime.now())),
      ),
    );
  }
}
