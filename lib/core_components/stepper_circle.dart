import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

class StepperCircle extends StatelessWidget {
  final String step;
  final bool isOrange;

  const StepperCircle({
    Key? key,
    required this.step,
    this.isOrange = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setHeight(36),
      height: ScreenUtil().setWidth(36),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient:
            isOrange == true ? kLinearGradient : kLinearCircleGreyGradient,
        shape: BoxShape.circle,
      ),
      child: Text(
        step,
        style: Theme.of(context).textTheme.headline5!.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(18)),
      ),
    );
  }
}
