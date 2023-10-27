import 'package:flutter/material.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../models/user_data.dart';

class TravelItemCard extends StatelessWidget {
  final User user;

  TravelItemCard({required this.user, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String postImage = user.postDetailsData.isNotEmpty
        ? user.postDetailsData[0].postImage
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
            children: [
              Container(
                height: 164,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Image.asset(postImage, fit: BoxFit.cover),
              ),
              const SizedBox(height: 18),
              Flexible(
                child: Text(
                  'Feel the thrill on the only\nsurf simulator in Maldives 2022',
                  style: tGellixSemiBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 38,
                        width: 38,
                        child: ClipOval(
                          child: Image.asset('assets/images/sampleProfile.png',
                              fit: BoxFit.cover),
                        ),
                      ),
                      SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Sang Dong-Min',
                            style: tGellixSemiBold.copyWith(
                              fontSize: SizeConfig.blockSizeHorizontal! * 3,
                            ),
                          ),
                          Text(
                            'Sep 9 2022',
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
            ],
          ),
        ),
      ),
    );
  }
}
