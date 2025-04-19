import 'package:flutter/material.dart';
import '_user_data.dart';

class UserAvatarSection extends StatelessWidget {
  final UserData userData;

  const UserAvatarSection({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(userData.backgroundImageUrl),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            bottom: -60,
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(userData.userImageUrl),
              ),
            ),
          )
        ],
      ),
    );
  }
}
