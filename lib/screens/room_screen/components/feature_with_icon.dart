import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeatureWithIcon extends StatelessWidget {
  final String? icon, text;
  final int? space;
  final Widget ico;

  const FeatureWithIcon({
    Key? key,
    this.icon,
    required this.text,
    this.space = 17,
    required this.ico,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ico,
        SizedBox(
          width: ScreenUtil().setWidth(space!),
        ),
        Text(
          text!,
          style: Theme.of(context).textTheme.headline5,
        )
      ],
    );
  }
}