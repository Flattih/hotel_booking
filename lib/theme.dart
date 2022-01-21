import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/constants.dart';

ThemeData theme() {
  return ThemeData(checkboxTheme: CheckboxThemeData(side: AlwaysActiveBorderSide()),
    appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
       ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: const TextStyle(
        color: Color(0xFF999999),
      ),
      filled: true,
      contentPadding: const EdgeInsets.all(12),
      iconColor: Colors.grey,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(
          ScreenUtil().radius(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(
          ScreenUtil().radius(10),
        ),
      ),
    ),
    fontFamily: "Nunito",
    textTheme: TextTheme(
        bodyText2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: ScreenUtil().setSp(36))),
    primaryColor: Colors.teal,
    iconTheme: const IconThemeData(color: kInputBgColor),
  );
}
class AlwaysActiveBorderSide extends MaterialStateBorderSide {
  @override
  BorderSide? resolve(_) => const BorderSide(color: Colors.grey);
}