import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotel_booking/core_components/default_button.dart';
import 'package:hotel_booking/screens/checkout1_screen/checkout1_screen.dart';

import 'feature_with_icon.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(18),
            ),
            Row(
              children: [
                Text(
                  "Standard King Room",
                  style: TextStyle(
                      color: Colors.black, fontSize: ScreenUtil().setSp(22)),
                ),
                Spacer(),
                Container(
                  height: ScreenUtil().setHeight(20),
                  width: ScreenUtil().setWidth(20),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: FaIcon(
                    Icons.info,
                    color: Colors.orangeAccent,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(18),
            ),
            FeatureWithIcon(
              text: "Refundable",
              ico: FaIcon(FontAwesomeIcons.coins),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(12),
            ),
            FeatureWithIcon(
              text: "Breakfact included",
              ico: FaIcon(FontAwesomeIcons.coffee),
              space: 12,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(12),
            ),
            FeatureWithIcon(
              text: "Wi-Fi",
              ico: FaIcon(FontAwesomeIcons.wifi),
              space: 12,
            ),
            SizedBox(
              height: ScreenUtil().setHeight(12),
            ),
            FeatureWithIcon(
              text: "Air Conditioner",
              ico: FaIcon(
                FontAwesomeIcons.thermometerQuarter,
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(12),
            ),
            FeatureWithIcon(
              text: "Bath",
              ico: FaIcon(FontAwesomeIcons.bath),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(30),
            ),
            Row(
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "\$ 1480\n"),
                      TextSpan(
                        text: "2 nights",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(
                          fontSize: 24,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                SizedBox(
                    width: ScreenUtil().setWidth(165),
                    child: DefaultButton(text: "Select", press: () {
                     Navigator.pushNamed(context,"Checkout1");
                    }))
              ],
            ),
            SizedBox(
              height: ScreenUtil().setHeight(20),
            )
          ],
        ),
      ),
    );
  }
}
