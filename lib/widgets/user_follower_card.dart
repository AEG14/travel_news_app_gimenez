import 'package:flutter/material.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../models/user_data.dart';

class UserFollowerCard extends StatelessWidget {
  final User user;
  final int userIndex;

  UserFollowerCard({required this.user, required this.userIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                user.userTimeLineFollowers,
                style: tGellixBold.copyWith(
                  color: tWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
              ),
              Text(
                'Followers',
                style: tGellixMedium.copyWith(
                  color: tWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1,
          height: SizeConfig.blockSizeVertical! * 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: tLightPaleBlue,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                user.userTimeLinePosts,
                style: tGellixBold.copyWith(
                  color: tWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
              ),
              Text(
                'Posts',
                style: tGellixMedium.copyWith(
                  color: tWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 1,
          height: SizeConfig.blockSizeVertical! * 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: tLightPaleBlue,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Text(
                user.userTimeLineFollowing,
                style: tGellixBold.copyWith(
                  color: tWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 4,
                ),
              ),
              Text(
                'Following',
                style: tGellixMedium.copyWith(
                  color: tWhite,
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
