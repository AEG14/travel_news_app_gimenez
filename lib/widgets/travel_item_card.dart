import 'package:flutter/material.dart';
import '../app_styles.dart';
import '../pages/user_timeline_page.dart';
import '../size_config.dart';
import '../models/user_data.dart';
import '../pages/travel_details_page.dart';
import '/push_animation.dart';

class TravelItemCard extends StatelessWidget {
  final User user;
  final int userIndex;
  TravelItemCard({required this.user, required this.userIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String postImage = user.postDetailsData.isNotEmpty
        ? user.postDetailsData[0].postImage
        : 'assets/images/maldives3.jpg';
    String postHeader = user.postDetailsData.isNotEmpty
        ? user.postDetailsData[0].postHeader
        : 'assets/images/maldives3.jpg';
    String postDate = user.postDetailsData.isNotEmpty
        ? user.postDetailsData[0].postDate
        : 'assets/images/maldives3.jpg';

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: 304,
        width: 255,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: tWhite,
          boxShadow: [
            BoxShadow(
              color: tMidnightBlue.withOpacity(0.051),
              offset: const Offset(0.0, 3.0),
              blurRadius: 24.0,
              spreadRadius: 0.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteUtils.createSlidePageRoute(
                          TravelDetailsPage(user: user, userIndex: userIndex)));
                },
                child: Container(
                  height: 164,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(postImage, fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteUtils.createSlidePageRoute(
                          TravelDetailsPage(user: user, userIndex: userIndex)));
                },
                child: Flexible(
                  child: Text(
                    postHeader,
                    style: tGellixSemiBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteUtils.createSlidePageRoute(
                          UserTimelinePage(user: user, userIndex: userIndex)));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 38,
                          width: 38,
                          child: ClipOval(
                            child: Image.asset(user.userProfilePicture,
                                fit: BoxFit.cover),
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              user.firstName + ' ' + user.lastName,
                              style: tGellixSemiBold.copyWith(
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                            Text(
                              postDate,
                              style: tGellixRegular.copyWith(
                                color: tGrey,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 37,
                      width: 37,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: tWhite3,
                      ),
                      child: Image.asset('assets/images/message.png',
                          fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
