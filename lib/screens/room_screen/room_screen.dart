import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/core_components/custom_appbar.dart';

import 'components/features.dart';
import 'components/rounded_image.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(text: "Beach Resort Lux",),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(19)),
          child: ListView(
            children: [
              Images(),
              Features(),
              SizedBox(
                height: ScreenUtil().setHeight(20),
              ),
              Images(),
              Features()
            ],
          ),
        ),
      ),
    );
  }
}


