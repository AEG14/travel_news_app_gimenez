import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';

class SearchBarCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        height: 49,
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
          children: [
            Expanded(
              child: TextField(
                style: tGellixRegular.copyWith(
                  fontSize: SizeConfig.blockSizeHorizontal! * 3,
                ),
                controller: TextEditingController(),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 13),
                  hintText: 'Search for article...',
                  border: tBorder,
                  errorBorder: tBorder,
                  disabledBorder: tBorder,
                  focusedBorder: tBorder,
                  focusedErrorBorder: tBorder,
                  hintStyle: tGellixRegular.copyWith(
                    color: tGrey2,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: tBlue,
              ),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/images/search_icon.svg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
