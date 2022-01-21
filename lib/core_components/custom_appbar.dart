import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  const CustomAppBar({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(ScreenUtil().setHeight(90));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: ScreenUtil().setHeight(90),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
        ),
      ),
      title: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontSize: 30, fontWeight: FontWeight.w700),
      ),
    );
  }
}