import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/core_components/default_button.dart';
import 'package:hotel_booking/core_components/star.dart';
import 'package:hotel_booking/screens/room_screen/room_screen.dart';

import 'components/adress_with_icon.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          toolbarHeight: ScreenUtil().setHeight(80),
          actions: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Icon(Icons.favorite_border_outlined),
            ),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/sara-dubler-Koei_7yYtIo-unsplash.png",
                fit: BoxFit.cover,
                width: ScreenUtil().screenWidth,
              ),
              Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    "assets/images/Mask Group.png",
                    fit: BoxFit.cover,
                  )),
                  Expanded(
                      child: Image.asset(
                    "assets/images/Mask Group 2.png",
                    fit: BoxFit.cover,
                  )),
                  Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      fit: StackFit.passthrough,
                      children: [
                        Image.asset(
                          "assets/images/Mask Group 3.png",
                          fit: BoxFit.fitWidth,
                        ),
                        Center(
                          child: Text(
                            "+25",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(90),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Beach Resort Lux",style: Theme.of(context).textTheme.bodyText2!.copyWith(fontSize:ScreenUtil().setSp(30) ),),
                      (StarCard(hotelStar: "4.5")),
                    ],
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Image.asset(
                    "assets/images/Map-Screen.png",
                    fit: BoxFit.cover,
                    width: ScreenUtil().screenWidth,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: ScreenUtil().setWidth(60)),
                    child: Image.asset(
                      "assets/images/ic_hotel.png",
                      height: ScreenUtil().setHeight(120),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(34)),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(18)),
                child: Column(
                  children: [
                    AddressWithIcon(
                      text: "Waikiki, HI 123456, Honolulu",
                      icon: "assets/images/location_icon.png",
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(13),
                    ),
                    AddressWithIcon(
                      text: "3.2 miles from centre",
                      icon: "assets/images/ic2.png",
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(14),
                    ),
                    DefaultButton(
                        text: "Select Rooms",
                        press: () {
                         Navigator.pushNamed(context,"RoomScreen");
                        }),
                    SizedBox(
                      height: ScreenUtil().setHeight(22),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
