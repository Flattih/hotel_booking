import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking/core_components/custom_appbar.dart';
import 'package:hotel_booking/core_components/default_button.dart';
import 'package:hotel_booking/core_components/star.dart';
import 'package:hotel_booking/core_components/stepper_circle.dart';
import 'package:hotel_booking/core_components/stepper_divider.dart';

class Checkout3Screen extends StatelessWidget {
  const Checkout3Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        appBar: CustomAppBar(text: "Reservation"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StepperCircle(
                    isOrange: true,
                    step: "1",
                  ),
                  StepperDivider(
                    isOrange: true,
                  ),
                  StepperCircle(
                    isOrange: true,
                    step: "2",
                  ),
                  StepperDivider(
                    isOrange: true,
                  ),
                  StepperCircle(
                    isOrange: true,
                    step: "3",
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(46),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setWidth(18),
                    vertical: ScreenUtil().setHeight(16)),
                margin: EdgeInsets.only(
                    right: ScreenUtil().setWidth(4),
                    left: ScreenUtil().setWidth(33)),
                height: ScreenUtil().setHeight(201),
                width: ScreenUtil().screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/bg3.png"),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.favorite_outline,
                        size: ScreenUtil().setHeight(17),
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Beach Resort Lux",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: ScreenUtil().setSp(22),
                              fontWeight: FontWeight.w700),
                        ),
                        StarCard(hotelStar: "4.5")
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "2 People\nStandard King Room\n2 nights\nJan 18 2019 to Jan 20 2019",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Color(0xFF616167),
                          fontSize: ScreenUtil().setHeight(16)),
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(22),
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(36),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$1480 USD"),
                        SvgPicture.asset("assets/images/Pricing.svg")
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(31),
                    ),
                    DefaultButton(text: "Complete", press: () {})
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
