import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/core_components/default_input_field.dart';




class InitialSearchFields extends StatelessWidget {
  final String? stringField1, stringField2;

  const InitialSearchFields({
    Key? key,
    this.stringField1,
    this.stringField2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 7,
          child: NormalInputField(
            data: Theme.of(context),
            text: stringField1,
            hintStyle:
                TextStyle(fontSize: ScreenUtil().setSp(20), color: Colors.grey),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(18),
        ),
        Expanded(
          flex: 4,
          child: NormalInputField(
            data: Theme.of(context),
            text: stringField2,
            hintStyle:
                TextStyle(fontSize: ScreenUtil().setSp(20), color: Colors.grey),
            suffixIcon: const Icon(Icons.arrow_drop_down),
          ),
        ),
      ],
    );
  }
}
