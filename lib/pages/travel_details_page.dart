import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../models/user_data.dart';
import 'user_timeline_page.dart';
import '/push_animation.dart';

class TravelDetailsPage extends StatelessWidget {
  final User user;
  final int userIndex;

  TravelDetailsPage({required this.user, required this.userIndex, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 50,
              child: Stack(
                children: [
                  FullScreenSlider(
                      carouselItems:
                          user.postDetailsData[userIndex].carouselItems),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(42),
                            topRight: Radius.circular(42)),
                        color: tWhite2,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(color: tWhite)),
                              padding: const EdgeInsets.all(12),
                              child: SvgPicture.asset(
                                  'assets/images/arrow_back_icon.svg'),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                border: Border.all(color: tWhite)),
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                                'assets/images/bookmark_white_icon.svg'),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                transform: Matrix4.translationValues(0, -14, 0),
                child: Text(
                  user.postDetailsData[userIndex].carouselHeader,
                  style: tGellixBold.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 7),
                )),
            Container(
              margin: const EdgeInsets.fromLTRB(30, 6, 30, 20),
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 2.5),
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: borderColor)),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      PageRouteUtils.createSlidePageRoute(
                          UserTimelinePage(user: user, userIndex: userIndex)));
                },
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 13,
                      backgroundColor: tBlue,
                      backgroundImage: AssetImage(user.userProfilePicture),
                    ),
                    SizedBox(
                      width: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                    Text(
                      user.firstName +
                          ' ' +
                          user.lastName +
                          ' ' +
                          user.postDetailsData[userIndex].carouselDate +
                          '  •  ' +
                          user.postDetailsData[userIndex].carouselMinRead,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: tGellixRegular.copyWith(
                          color: tGrey,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 24),
              child: Text(
                user.postDetailsData[userIndex].carouselDescription,
                style: tGellixMedium.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 30,
            )
          ],
        ),
      ),
    );
  }
}

class FullScreenSlider extends StatefulWidget {
  final List<String> carouselItems;
  FullScreenSlider({required this.carouselItems, Key? key}) : super(key: key);
  @override
  State<FullScreenSlider> createState() => _FullScreenSliderState();
}

class _FullScreenSliderState extends State<FullScreenSlider> {
  int _current = 1;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            height: SizeConfig.blockSizeVertical! * 50,
            viewportFraction: 1.0,
            enlargeCenterPage: false,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
            initialPage: _current,
          ),
          items: widget.carouselItems
              .map((item) => Container(
                    height: SizeConfig.blockSizeVertical! * 50,
                    child: Image.asset(
                      item,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ))
              .toList(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              bottom: 52,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.carouselItems
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () => _controller.animateToPage(entry.key),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7),
                        child: SvgPicture.asset(_current == entry.key
                            ? 'assets/images/carousel_indicator_enabled.svg'
                            : 'assets/images/carousel_indicator_disabled.svg'),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        )
      ],
    );
  }
}
