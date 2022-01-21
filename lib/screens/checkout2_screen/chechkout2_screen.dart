import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hotel_booking/constants.dart';
import 'package:hotel_booking/core_components/custom_appbar.dart';
import 'package:hotel_booking/core_components/default_button.dart';
import 'package:hotel_booking/core_components/default_input_field.dart';
import 'package:hotel_booking/core_components/stepper_circle.dart';
import 'package:hotel_booking/core_components/stepper_divider.dart';
import 'package:hotel_booking/screens/checkout3_screen/checkout3_screen.dart';

class Checkout2Screen extends StatefulWidget {
  const Checkout2Screen({Key? key}) : super(key: key);

  @override
  State<Checkout2Screen> createState() => _Checkout2ScreenState();
}

bool checkbox = false;

class _Checkout2ScreenState extends State<Checkout2Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(text: "Reservation"),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
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
                    StepperDivider(),
                    StepperCircle(
                      step: "3",
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().radius(10)),
                      gradient: kLinearCardGradient,
                      color: Colors.grey),
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(18),
                      vertical: ScreenUtil().setHeight(21)),
                  margin: EdgeInsets.only(
                      bottom: ScreenUtil().setHeight(27),
                      top: ScreenUtil().setHeight(51)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/images/subo.png"),
                          Image.asset("assets/images/visa-logo.png")
                        ],
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(50),
                      ),
                      Text(
                        "1234 5678  9123 4567",
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "JOHN DOE",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "00/00",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                NormalInputField(
                  data: Theme.of(context),
                  text: "Card Number",
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Row(
                  children: [
                    Expanded(
                      child: NormalInputField(
                        data: Theme.of(context),
                        text: "Expiry",
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setWidth(15),
                    ),
                    Expanded(
                      child: NormalInputField(
                        data: Theme.of(context),
                        text: "CVV",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                NormalInputField(text: "Name", data: Theme.of(context)),
                SizedBox(
                  height: ScreenUtil().setHeight(21),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: ScreenUtil().setWidth(24),
                      height: ScreenUtil().setHeight(24),
                      child: Checkbox(
                        checkColor: Colors.grey,
                        activeColor: Colors.white,
                        value: checkbox,
                        onChanged: (value) {
                          setState(() {
                            checkbox = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Save this credit card",
                      style: Theme.of(context).textTheme.button!.copyWith(
                          color: Colors.grey, fontSize: ScreenUtil().setSp(14)),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(42),
                ),
                DefaultButton(
                  text: "Go to Confirmation",
                  press: () {
                   Navigator.pushNamed(context,"Checkout3");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
