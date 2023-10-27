import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../widgets/popular_posts_card.dart';
import '../widgets/user_follower_card.dart';
import '../models/user_data.dart';
import '../widgets/user_posts_list_card.dart';

class UserTimelinePage extends StatelessWidget {
  final User user;
  final int userIndex;

  UserTimelinePage({required this.user, required this.userIndex, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: tWhite2,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  SizedBox(
                    height: 11,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(user.userProfilePicture),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 0.20,
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(user.firstName + ' ' + user.lastName,
                                  style: tGellixBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 4)),
                              Text(user.topUserTitle,
                                  style: tGellixRegular.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! *
                                              3.5))
                            ],
                          ),
                          Container(
                            constraints: BoxConstraints(
                                maxHeight: 42,
                                maxWidth: SizeConfig.blockSizeHorizontal! * 30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: tBlue),
                            child: Center(
                                child: Text('Following',
                                    style: tGellixMedium.copyWith(
                                        color: tWhite,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                3.5))),
                          ),
                        ],
                      ))
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Text(user.topUserDescription,
                      style: tGellixMedium.copyWith(
                          color: tGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3)),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.blockSizeHorizontal! * 3,
                          vertical: SizeConfig.blockSizeVertical! * 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: tMidnightBlue),
                      child:
                          UserFollowerCard(user: user, userIndex: userIndex)),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        user.firstName + "'s Post",
                        style: tGellixBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4),
                      ),
                      Text(
                        "View All",
                        style: tGellixMedium.copyWith(
                            color: tBlue,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  UserPostsListCard(user: user, userIndex: userIndex),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Popular From ' + user.firstName,
                        style: tGellixBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                ],
              ),
            ),
            PopularPostsCard(user: user, userIndex: userIndex),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
          ],
        )),
      ),
    );
  }
}
