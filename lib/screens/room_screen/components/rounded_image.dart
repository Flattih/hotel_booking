import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Images extends StatelessWidget {
  const Images({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth,
      height: ScreenUtil().setHeight(185),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        image: DecorationImage(
            image: AssetImage(
              "assets/images/christopher-jolly-GqbU78bdJFM-unsplash.png",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}