import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstCard extends StatelessWidget {
  final String hotelInformation, hotelLocation,hotelImg, price, starPoint;

  const FirstCard(
      {Key? key,
      required this.hotelInformation,
      required this.hotelLocation,
      required this.price,
      required this.starPoint, required this.hotelImg})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(21)),
      child: SizedBox(
        height: ScreenUtil().setHeight(186),
        width: ScreenUtil().setWidth(265),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(ScreenUtil().radius(25)),
              child: Image.asset(
                hotelImg,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: ScreenUtil().setHeight(42),
              left: ScreenUtil().setWidth(15),
              child: Text(
                hotelInformation,
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(18),
                ),
              ),
            ),
            Positioned(
              bottom: ScreenUtil().setHeight(15),
              left: ScreenUtil().setWidth(15),
              child: Text(
                hotelLocation,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: ScreenUtil().setSp(14),
                ),
              ),
            ),
            Positioned(
              right: ScreenUtil().setWidth(25),
              bottom: ScreenUtil().setHeight(15),
              child: Row(
                children: [
                  Text(
                    "\$$price~",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(14),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(12),
                  ),
                  Text(
                    starPoint,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(14),
                    ),
                  ),
                  SizedBox(
                    width: ScreenUtil().setWidth(5),
                  ),
                  SvgPicture.asset("assets/images/star.svg",
                      height: ScreenUtil().setHeight(24))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
