import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';

class ShortNewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                      spreadRadius: 0.0,
                    ),
                  ],
                ),
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
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 11.35),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Top Trending',
                                      style: tGellixSemiBold.copyWith(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                    Text(
                                      'Islands in 2022',
                                      style: tGellixSemiBold.copyWith(
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! * 3,
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
                                          fit: BoxFit.cover),
                                    ),
                                    SizedBox(width: 4.36),
                                    Text(
                                      '40,999',
                                      style: tGellixRegular.copyWith(
                                        color: tGrey,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! * 3,
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
        ),
      ),
    );
  }
}
