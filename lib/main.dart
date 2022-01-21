import 'package:flutter/material.dart';

import 'package:hotel_booking/routes.dart';
import 'package:hotel_booking/theme.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final _navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hotel Booking",
        theme: theme(),
        home: Scaffold(
          bottomNavigationBar: buildSalomonBottomBar(),
          body: Routes(navigatorKey: _navigatorKey),
        ),
      ),
    );
  }

  SalomonBottomBar buildSalomonBottomBar() {
    return SalomonBottomBar(
      selectedItemColor: Colors.orange,
      currentIndex: _currentIndex,
      onTap: (i) => setState(() {
        _currentIndex = i;
        _navigatorKey.currentState!
            .pushNamedAndRemoveUntil("BottomBarIndex$i", (Route<dynamic> route) => false);
        //_currentScreen = (i == 1) ? FirstScreen() : FirstScreen();
      }),
      items: [
        /// Home
        SalomonBottomBarItem(
          icon: const Icon(Icons.home),
          title: const Text("Home"),
        ),

        SalomonBottomBarItem(
            icon: const Icon(Icons.search), title: const Text("Search")),

        /// Search
        SalomonBottomBarItem(
          icon: const Icon(Icons.notifications),
          title: const Text("Notifications"),
        ),

        /// Profile
        SalomonBottomBarItem(
          icon: const Icon(
            Icons.person,
          ),
          title: const Text("Profile"),
        ),
      ],
    );
  }
}
