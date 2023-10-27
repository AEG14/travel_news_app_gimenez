import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../models/short_data.dart';

class ShortNewsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: 88,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: shortNewsData.length,
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
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                shortNewsData[index].shortNewsImage,
                                fit: BoxFit.cover,
                                height: 70,
                                width: 70,
                              ),
                            ),
                          ),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  shortNewsData[index].shortNewsHeader,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: tGellixSemiBold.copyWith(
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 3,
                                  ),
                                ),
                                SizedBox(
                                  height:
                                      SizeConfig.blockSizeHorizontal! * 0.75,
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
                                      shortNewsData[index].viewCount,
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
