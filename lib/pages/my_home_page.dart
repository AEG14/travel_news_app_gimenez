import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import '../app_styles.dart';
import '../size_config.dart';
import '../widgets/list_of_travel_posts.dart';
import '../widgets/search_bar_card.dart';
import '../widgets/tag_card.dart';
import '../widgets/short_news_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> tags = [
    '#Health',
    '#Music',
    '#Technology',
    '#Sports',
    '#Work',
    '#Meme'
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: ListView(
        children: [
          SizedBox(
            height: 56,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              children: [
                Container(
                  height: 51,
                  width: 51,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: tPaleBlue,
                  ),
                  child: Image.asset(
                    'assets/images/ProfileImage.png',
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Welcome Back!',
                      style: tGellixBold.copyWith(
                        fontSize: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                    ),
                    Text(
                      'Saturday, 28 October',
                      style: tGellixRegular.copyWith(
                        color: tGrey,
                        fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 32),
          SearchBarCard(),
          SizedBox(height: 15),
          TagCard(tags),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: ListOfTravelItems(),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Short For You',
                  style: tGellixBold.copyWith(
                    fontSize: SizeConfig.blockSizeHorizontal! * 4.5,
                  ),
                ),
                Text(
                  'View All',
                  style: tGellixMedium.copyWith(
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                      color: tBlue),
                )
              ],
            ),
          ),
          SizedBox(height: 19),
          ShortNewsCard(),
          SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
