import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../models/user_data.dart';
import '../pages/travel_details_page.dart';
import '/push_animation.dart';

class UserPostsListCard extends StatelessWidget {
  final User user;
  final int userIndex;

  UserPostsListCard({required this.user, required this.userIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: user.postDetailsData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(PageRouteUtils.createSlidePageRoute(
                  TravelDetailsPage(user: user, userIndex: index)));
            },
            child: Container(
              height: 100,
              margin: EdgeInsets.only(
                bottom: SizeConfig.blockSizeVertical! * 2.5,
              ),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: const EdgeInsets.all(5),
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        user.postDetailsData[index].postImage,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'News: ' +
                              user.postDetailsData[index].timelineCategory,
                          style: tGellixRegular.copyWith(
                            color: tGrey,
                            fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 1,
                        ),
                        Text(
                          user.postDetailsData[index].postHeader,
                          style: tGellixSemiBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          user.postDetailsData[index].carouselDescription,
                          style: tGellixSemiBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                    'assets/images/calendar_icon.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal! * 1.5,
                                ),
                                Text(
                                  user.postDetailsData[index].timelineDate,
                                  style: tGellixMedium.copyWith(
                                    color: tGrey,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  child: SvgPicture.asset(
                                    'assets/images/time_icon.svg',
                                  ),
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeVertical! * 1,
                                ),
                                Text(
                                  user.postDetailsData[index].timelineTime,
                                  style: tGellixMedium.copyWith(
                                    color: tGrey,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 2.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
