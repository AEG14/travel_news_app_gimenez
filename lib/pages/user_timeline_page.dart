import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';

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
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: SafeArea(
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
                                fontSize: SizeConfig.blockSizeHorizontal! * 4)),
                        Text('IT Programmer',
                            style: tGellixRegular.copyWith(
                                fontSize:
                                    SizeConfig.blockSizeHorizontal! * 3.5))
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
                                      SizeConfig.blockSizeHorizontal! * 3.5))),
                    ),
                  ],
                ))
              ],
            )
          ],
        )),
      ),
    );
  }
}
