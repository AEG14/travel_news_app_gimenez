import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../widgets/list_of_travel_posts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: 56,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: tPaleBlue,
                  ),
                  child: Image.asset(
                    'assets/images/ProfileImage.png',
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: tGellixBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'Saturday, 28 October',
                      style: tGellixRegular.copyWith(
                        color: tGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 32),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: 49,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: tWhite,
                boxShadow: [
                  BoxShadow(
                      color: tMidnightBlue.withOpacity(0.051),
                      offset: const Offset(0.0, 3.0),
                      blurRadius: 24.0,
                      spreadRadius: 0.0)
                ]),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                  style: tGellixRegular.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                  controller: TextEditingController(),
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 13),
                      hintText: 'Search for article...',
                      border: tBorder,
                      errorBorder: tBorder,
                      disabledBorder: tBorder,
                      focusedBorder: tBorder,
                      focusedErrorBorder: tBorder,
                      hintStyle: tGellixRegular.copyWith(
                        color: tGrey2,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      )),
                )),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: tBlue,
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/images/search_icon.svg'),
                    )),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
                height: 14,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 38.0),
                      child: Text(
                        '#Health',
                        style: tGellixMedium.copyWith(
                            color: tGrey,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3),
                      ),
                    );
                  },
                )),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListOfTravelItems(),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Short For You',
                  style: tGellixBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                  ),
                ),
                Text(
                  'View All',
                  style: tGellixMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: tBlue),
                )
              ],
            ),
          ),
          SizedBox(height: 19),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
                height: 88,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Container(
                        height: 88,
                        width: 208,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: tWhite,
                            boxShadow: [
                              BoxShadow(
                                  color: tMidnightBlue.withOpacity(0.051),
                                  offset: const Offset(0.0, 3.0),
                                  blurRadius: 24.0,
                                  spreadRadius: 0.0)
                            ]),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 9),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Stack(
                                children: [
                                  Image.asset('assets/images/Iceberg.png',
                                      fit: BoxFit.cover),
                                  Center(
                                    child: SvgPicture.asset(
                                        'assets/images/play_icon.svg',
                                        fit: BoxFit.cover),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 11.35,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Flexible(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Top Trending',
                                              style: tGellixSemiBold.copyWith(
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    3,
                                              ),
                                            ),
                                            Text(
                                              'Islands in 2022',
                                              style: tGellixSemiBold.copyWith(
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                                height: 11.75,
                                                width: 14.54,
                                                child: SvgPicture.asset(
                                                    'assets/images/eye_icon.svg',
                                                    fit: BoxFit.cover)),
                                            SizedBox(
                                              width: 4.36,
                                            ),
                                            Text(
                                              '40,999',
                                              style: tGellixRegular.copyWith(
                                                color: tGrey,
                                                fontSize: SizeConfig
                                                        .blockSizeHorizontal! *
                                                    3,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
          ),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
