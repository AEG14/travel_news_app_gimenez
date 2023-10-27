import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import '../app_styles.dart';
import '../size_config.dart';
import '../models/user_data.dart';

class PopularPostsCard extends StatelessWidget {
  final User user;
  final int userIndex;

  PopularPostsCard({required this.user, required this.userIndex, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30),
      child: Container(
        height: 143,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: user.popularImageData.length,
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
                  user.popularImageData[index].image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
