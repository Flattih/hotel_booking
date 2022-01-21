import 'package:flutter/material.dart';



class NormalInputField extends TextField {
  NormalInputField(
      {Key? key,
      String? text,
      required ThemeData data,
      Widget? suffixIcon,
      TextStyle? hintStyle})
      : super(
          key: key,
          decoration: InputDecoration(
              fillColor: Colors.grey.withOpacity(0.1),
              hintText: text,
              hintStyle: hintStyle,
              suffixIcon: suffixIcon),
        );
}
