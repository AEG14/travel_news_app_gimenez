import 'package:flutter/material.dart';
import '../app_styles.dart';
import '../size_config.dart';

class UserFollowerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            children: [
              Text(
                '54.21k',
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
                '2.11k',
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
                '1,415',
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
