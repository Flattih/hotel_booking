import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddressWithIcon extends StatelessWidget {
  final String text, icon;

  const AddressWithIcon({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: ScreenUtil().setWidth(13)),
          decoration: BoxDecoration(
              color: Colors.orange.withOpacity(0.19),
              borderRadius: BorderRadius.circular(5)),
          height: ScreenUtil().setHeight(38),
          width: ScreenUtil().setHeight(38),
          child: Image.asset(icon),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontWeight: FontWeight.w600, color: Colors.grey, fontSize: 16),
        ),
      ],
    );
  }
}