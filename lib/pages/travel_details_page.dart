import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../widgets/bot_nav_bar_card.dart';

class TravelDetailsPage extends StatefulWidget {
  const TravelDetailsPage({Key? key}) : super(key: key);

  @override
  State<TravelDetailsPage> createState() => _TravelDetailsPageState();
}

class _TravelDetailsPageState extends State<TravelDetailsPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        bottomNavigationBar: BotNavBarCard(
            selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
        backgroundColor: tWhite2,
        body: SafeArea(child: ListView(children: [])));
  }
}
