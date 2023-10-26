import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';

class TravelDetailsPage extends StatefulWidget {
  const TravelDetailsPage({Key? key}) : super(key: key);

  @override
  State<TravelDetailsPage> createState() => _TravelDetailsPageState();
}

class _TravelDetailsPageState extends State<TravelDetailsPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 50,
            child: Stack(
              children: [
                const FullScreenSlider(),
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
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: tWhite)),
                          padding: const EdgeInsets.all(12),
                          child: SvgPicture.asset(
                              'assets/images/arrow_back_icon.svg'),
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
                'Unravel Mysteries\nof the Maldives',
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
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 13,
                  backgroundColor: tBlue,
                  backgroundImage:
                      AssetImage('assets/images/sampleProfile3.png'),
                ),
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal! * 2.5,
                ),
                Text(
                  'Keanu Carpent  May 17  •  8 min read',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: tGellixRegular.copyWith(
                      color: tGrey,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 24),
            child: Text(
              "Just say anything, George, say what ever's natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah,it's 8:00. Hey, McFly, I thought I told you never ",
              style: tGellixMedium.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 4),
            ),
          ),
          SizedBox(
            height: SizeConfig.blockSizeVertical! * 5,
          )
        ],
      ),
    );
  }
}

final List<String> imageList = [
  'assets/images/MyTravel1.jpg',
  'assets/images/Rectangle.png',
  'assets/images/MyTravel2.jpg'
];

class FullScreenSlider extends StatefulWidget {
  const FullScreenSlider({Key? key}) : super(key: key);

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
          items: imageList
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
              children: imageList
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
