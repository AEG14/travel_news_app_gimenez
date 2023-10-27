import 'package:flutter/material.dart';
import 'pages/my_home_page.dart';
import '../app_styles.dart';
import '../widgets/bot_nav_bar_card.dart';
// import 'pages/travel_details_page.dart';
// import 'pages/user_timeline_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel News App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        bottomNavigationBar: BotNavBarCard(
            selectedIndex: _selectedIndex, onItemTapped: _onItemTapped),
        backgroundColor: tWhite2,
        body: const MyHomePage(),
      ),
      //
    );
  }
}
