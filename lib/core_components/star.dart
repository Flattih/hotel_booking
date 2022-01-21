import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';
class StarCard extends StatelessWidget {
  const StarCard({
    Key? key,
    required this.hotelStar,
  }) : super(key: key);

  final String hotelStar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(7),
          vertical: ScreenUtil().setHeight(3)),
      decoration: BoxDecoration(
        gradient: kLinearGradient,
        color: Colors.orange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Text(
            hotelStar,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: ScreenUtil().setSp(12),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          const Icon(
            Icons.star,
            size: 20,
            color: Color(0xFFFFF1DC),
          ),
        ],
      ),
    );
  }
}