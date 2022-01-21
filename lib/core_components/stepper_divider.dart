import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StepperDivider extends StatelessWidget {
  final bool isOrange;

  const StepperDivider({
    this.isOrange = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30,
      child: Divider(
        color: isOrange == true ? Colors.orangeAccent : null,
        thickness: ScreenUtil().setWidth(2.8),
      ),
    );
  }
}