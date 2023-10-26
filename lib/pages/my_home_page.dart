import 'package:flutter/material.dart';
import '../app_styles.dart';
import '../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: tWhite2,
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          children: [
            Row(
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
              ],
            )
          ],
        ),
      ),
    );
  }
}
