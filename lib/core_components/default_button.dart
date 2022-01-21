import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback press;

  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(75),width: ScreenUtil().screenWidth,
      decoration: ShapeDecoration(
        gradient: kLinearGradient,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // <-- Radius
        ),
      ),
      child: ElevatedButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          textStyle: TextStyle(fontSize: ScreenUtil().setSp(24)),
        ),
      ),
    );
  }
}
