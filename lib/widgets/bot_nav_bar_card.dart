import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../app_styles.dart';

class BotNavBarCard extends StatelessWidget {
  final int selectedIndex;
  final void Function(int) onItemTapped;

  BotNavBarCard({
    required this.selectedIndex,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      backgroundColor: tWhite,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: selectedIndex == 0
              ? SvgPicture.asset('assets/images/home_selected_icon.svg')
              : SvgPicture.asset('assets/images/home_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 1
              ? SvgPicture.asset('assets/images/bookmark_selected_icon.svg')
              : SvgPicture.asset('assets/images/bookmark_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 2
              ? SvgPicture.asset('assets/images/notification_selected_icon.svg')
              : SvgPicture.asset(
                  'assets/images/notification_unselected_icon.svg'),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: selectedIndex == 3
              ? SvgPicture.asset('assets/images/profile_selected_icon.svg')
              : SvgPicture.asset('assets/images/profile_unselected_icon.svg'),
          label: '',
        ),
      ],
      currentIndex: selectedIndex,
      onTap: onItemTapped,
    );
  }
}
