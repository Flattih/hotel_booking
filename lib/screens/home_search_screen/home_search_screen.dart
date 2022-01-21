import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/core_components/header_title.dart';
import 'package:hotel_booking/core_components/hotel_row.dart';
import 'package:hotel_booking/core_components/star.dart';
import 'package:hotel_booking/enums.dart';




transition trans = transition.map;

class HomeSearchScreen extends StatefulWidget {
  const HomeSearchScreen({Key? key}) : super(key: key);

  @override
  State<HomeSearchScreen> createState() => _HomeSearchScreenState();
}

class _HomeSearchScreenState extends State<HomeSearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 6,
          backgroundColor: Colors.white,
          title: const Text(
            "Honolulu, USA - 2 guests - Jan 18 to Jan 23",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: ScreenUtil().setWidth(18)),
              child: const Icon(
                Icons.arrow_drop_down,
                color: Colors.grey,
              ),
            )
          ],
        ),
        body: trans == transition.map
            ? SingleChildScrollView(
                child: SizedBox(
                  height: ScreenUtil().screenHeight,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(19)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 5),
                              width: double.infinity,
                              height: ScreenUtil().setHeight(50),
                              child: HeaderTitle(
                                press: () {
                                  setState(() {
                                    trans = transition.list;
                                  });
                                },
                                rightText: "Map",
                              ),
                            ),
                            const Divider(
                              height: 10,
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(30),
                            ),
                            Text(
                              "Near the beaches",
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(28)),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(30),
                            ),
                            const SingleChildScrollView(
                              clipBehavior: Clip.none,
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: HotelStarRow(),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(39),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(18),
                          ),
                          color: const Color(0xFFF5F5F5),
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        ScreenUtil().radius(20))),
                                margin: EdgeInsets.only(
                                    top: ScreenUtil().setHeight(43)),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Image.asset(
                                          "assets/images/bg3.png",
                                          fit: BoxFit.contain,
                                          width: double.infinity,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  ScreenUtil().setWidth(15),
                                              vertical:
                                                  ScreenUtil().setHeight(15)),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Beach Resort Lux",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        ScreenUtil().setSp(29)),
                                              ),

                                              const StarCard(hotelStar: "4.5")
                                            ],
                                          ),
                                        ),
                                        Positioned(
                                            top: ScreenUtil().setHeight(12),
                                            right: ScreenUtil().setWidth(12),
                                            child: const Icon(
                                                Icons.favorite_border))
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Waikiki, 4.1 miles from center",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    color: Colors.grey,
                                                    fontWeight:
                                                        FontWeight.w600),
                                          ),
                                          SizedBox(
                                              height:
                                                  ScreenUtil().setHeight(10)),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Ocean View 1 king Bed\nNo prepayment",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1!
                                                    .copyWith(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.w600),
                                              ),
                                              Text(
                                                "\$ 720",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .subtitle1!
                                                    .copyWith(
                                                      fontWeight:
                                                          FontWeight.w900,
                                                      fontSize: ScreenUtil()
                                                          .setSp(28),
                                                    ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Screen2(),
      ),
    );
  }

  Widget Screen2() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: ScreenUtil().setHeight(15),
          ),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19)),
            child: HeaderTitle(
                rightText: "List view",
                press: () {
                  setState(() {
                    trans = transition.map;
                  });
                }),
          ),
          SizedBox(
            height: ScreenUtil().setHeight(13),
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset("assets/images/MapScreen.png",
                  fit: BoxFit.cover, width: ScreenUtil().screenWidth),
              Positioned(
                  bottom: ScreenUtil().setHeight(-50),
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.only(left: ScreenUtil().setWidth(12)),
                    child: const HotelStarRow(),
                  ))
            ],
          ),
          SizedBox(
            height: ScreenUtil().setHeight(50),
          )
        ],
      ),
    );
  }
}
