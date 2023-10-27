import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../widgets/user_follower_card.dart';
import '../models/user_data.dart';

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
        itemCount: 2,
        itemBuilder: (context, index) {
          return Container(
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
                      'assets/images/MyTravel4.jpg',
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
                        'News: Politics',
                        style: tGellixRegular.copyWith(
                          color: tGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      ),
                      Text(
                        "Aithan's Bike Adventure",
                        style: tGellixSemiBold.copyWith(
                          fontSize: SizeConfig.blockSizeHorizontal! * 3,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        'Fifth Iranian paramilitary message are very worried about blablabla',
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
                                '16th May',
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
                                '09:32 pm',
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
          );
        },
      ),
    );
  }
}
