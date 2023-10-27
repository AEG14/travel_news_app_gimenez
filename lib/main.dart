import 'package:flutter/material.dart';
import 'pages/my_home_page.dart';
import '../widgets/bot_nav_bar_card.dart';
import 'pages/travel_details_page.dart';
import 'pages/user_timeline_page.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => MainScaffoldWrapper(
              child: MyHomePage(),
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
        '/travel_details_page': (context) => MainScaffoldWrapper(
              child: TravelDetailsPage(),
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
        '/user_timeline_page': (context) => MainScaffoldWrapper(
              child: UserTimelinePage(),
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            )
      },
    );
  }
}

class MainScaffoldWrapper extends StatelessWidget {
  final Widget child;
  final int selectedIndex;
  final void Function(int) onItemTapped;

  const MainScaffoldWrapper({
    required this.child,
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BotNavBarCard(
        selectedIndex: selectedIndex,
        onItemTapped: onItemTapped,
      ),
    );
  }
}
