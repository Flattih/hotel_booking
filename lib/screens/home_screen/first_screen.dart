
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/core_components/default_button.dart';
import 'package:hotel_booking/screens/home_screen/components/card.dart';
import 'package:hotel_booking/screens/home_search_screen/home_search_screen.dart';
import 'components/initial_search_fields.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: ScreenUtil().setHeight(225),
              width: ScreenUtil().screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/bg4.png"),
                ),
              ),
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(15)),
                child: const Text(
                  "Find a perfect place \nto stay",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              color: const Color(0xFF393939),
              height: ScreenUtil().setHeight(304),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtil().setWidth(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(42),
                    ),
                    SizedBox(
                        height: ScreenUtil().setHeight(50),
                        child: const InitialSearchFields(
                          stringField1: "Place",
                          stringField2: "Guests",
                        )),
                    SizedBox(
                      height: ScreenUtil().setHeight(23),
                    ),
                    SizedBox(
                        height: ScreenUtil().setHeight(50),
                        child: const InitialSearchFields(
                          stringField1: "Date",
                          stringField2: "Nights",
                        )),
                    SizedBox(
                      height: ScreenUtil().setHeight(29),
                    ),
                    DefaultButton(
                      press: () {
                        Navigator.pushNamed(context,"HomeSearchScreen");
                      },
                      text: 'Search a room',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(35),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtil().setWidth(21),
              ),
              child: Text(
                "Recommended",
                style: TextStyle(
                    color: Colors.black, fontSize: ScreenUtil().setSp(22)),
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(18),
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const FirstCard(
                    hotelInformation: "Lux Hotel witha Pool",
                    hotelLocation: "Dubai",
                    price: "700",
                    starPoint: "4.5",
                    hotelImg: "assets/images/bg.png",
                  ),
                  const FirstCard(
                    hotelInformation: "Sunset Hotel",
                    hotelLocation: "Venice",
                    price: "800",
                    starPoint: "4.2",
                    hotelImg: "assets/images/bg2.png",
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(21),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
