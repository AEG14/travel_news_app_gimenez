import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../widgets/user_follower_card.dart';

class UserTimelinePage extends StatefulWidget {
  const UserTimelinePage({Key? key}) : super(key: key);

  @override
  State<UserTimelinePage> createState() => _UserTimelinePageState();
}

class _UserTimelinePageState extends State<UserTimelinePage> {
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
                          child: Image.asset('assets/images/UserProfile.png'),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 3,
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
                              Text('Aithan Gimenez',
                                  style: tGellixBold.copyWith(
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 4)),
                              Text('IT Programmer',
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
                  Text(
                      'Every piece of chocolate I ever ate is getting back at me.. desserts are very revengeful..',
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
                      child: UserFollowerCard()),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Aithan's Post",
                        style: tGellixBold.copyWith(
                            fontSize: SizeConfig.blockSizeHorizontal! * 4),
                      ),
                      Text(
                        "View All",
                        style: tGellixBold.copyWith(
                            color: tBlue,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2.5,
                  ),
                  SizedBox(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            margin: EdgeInsets.only(
                                bottom: SizeConfig.blockSizeVertical! * 2.5),
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
                                            color: tMidnightBlue
                                                .withOpacity(0.051),
                                            offset: const Offset(0.0, 3.0),
                                            blurRadius: 24.0,
                                            spreadRadius: 0.0)
                                      ]),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'News: Politics',
                                        style: tGellixRegular.copyWith(
                                            color: tGrey,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                2.5),
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeVertical! * 1,
                                      ),
                                      Text(
                                        "Aithan's Bike Adventure",
                                        style: tGellixSemiBold.copyWith(
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        'Fifth Iranian paramilitary message are very worried about blablabla',
                                        style: tGellixSemiBold.copyWith(
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(
                                        height:
                                            SizeConfig.blockSizeVertical! * 1,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                child: SvgPicture.asset(
                                                    'assets/images/calendar_icon.svg'),
                                              ),
                                              SizedBox(
                                                width: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    1.5,
                                              ),
                                              Text('16th May',
                                                  style: tGellixMedium.copyWith(
                                                      color: tGrey,
                                                      fontSize: SizeConfig
                                                              .blockSizeHorizontal! *
                                                          2.5))
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                child: SvgPicture.asset(
                                                    'assets/images/time_icon.svg'),
                                              ),
                                              SizedBox(
                                                width: SizeConfig
                                                        .blockSizeVertical! *
                                                    1,
                                              ),
                                              Text(
                                                '09:32 pm',
                                                style: tGellixMedium.copyWith(
                                                    color: tGrey,
                                                    fontSize: SizeConfig
                                                            .blockSizeHorizontal! *
                                                        2.5),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Popular from Aithan',
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
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Container(
                height: 143,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 143,
                        width: 248,
                        margin: EdgeInsets.only(
                          right: SizeConfig.blockSizeHorizontal! * 2.5,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/images/MyTravel3.jpg',
                              fit: BoxFit.cover,
                            )),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
          ],
        )),
      ),
    );
  }
}
