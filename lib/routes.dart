import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/checkout1_screen/checkout1_screen.dart';
import 'package:hotel_booking/screens/checkout2_screen/chechkout2_screen.dart';
import 'package:hotel_booking/screens/checkout3_screen/checkout3_screen.dart';
import 'package:hotel_booking/screens/home_screen/first_screen.dart';
import 'package:hotel_booking/screens/home_search_screen/home_search_screen.dart';
import 'package:hotel_booking/screens/initial_search_screen/initial_search_screen.dart';
import 'package:hotel_booking/screens/room_screen/room_screen.dart';

import 'screens/hotel_screen/hotel_screen.dart';

class Routes extends StatelessWidget {
  const Routes({
    Key? key,
    required GlobalKey<NavigatorState> navigatorKey,
  })  : _navigatorKey = navigatorKey,
        super(key: key);

  final GlobalKey<NavigatorState> _navigatorKey;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_navigatorKey.currentState!.canPop()) {
          _navigatorKey.currentState!.pop();
          return false;
        }
        return true;
      },
      child: Navigator(
        key: _navigatorKey,
        initialRoute: "BottomBarIndex0",
        onGenerateRoute: (RouteSettings settings) {
          WidgetBuilder builder;
          // MANAGE ROOT
          switch (settings.name) {
            case 'BottomBarIndex0':
              builder = (BuildContext context) => const HomeScreen();
              break;
            case 'BottomBarIndex1':
              builder = (BuildContext context) => const InitialSearchScreen();
              break;
            case 'BottomBarIndex2':
              builder = (BuildContext context) => const HotelScreen();
              break;
            case 'BottomBarIndex3':
              builder = (BuildContext context) => const HotelScreen();
              break;
            case 'HomeSearchScreen':
              builder = (BuildContext context) => HomeSearchScreen();
              break;
            case 'HotelScreen':
              builder = (BuildContext context) => HotelScreen();
              break;
            case 'RoomScreen':
              builder = (BuildContext context) => RoomScreen();
              break;
            case 'Checkout1':
              builder = (BuildContext context) => Checkout1Screen();
              break;
            case 'Checkout2':
              builder = (BuildContext context) => Checkout2Screen();
              break;
            case 'Checkout3':
              builder = (BuildContext context) => Checkout3Screen();
              break;
            default:
              throw Exception("invalid route");
          }
          return MaterialPageRoute(
            builder: builder,
            settings: settings,
          );
        },
      ),
    );
  }
}
