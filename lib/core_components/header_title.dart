import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderTitle extends StatelessWidget {
  final String rightText;
  final VoidCallback press;

  const HeaderTitle({
    Key? key,
    required this.rightText,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.filter_alt,
          size: 28,
        ),
        SizedBox(
          width: ScreenUtil().setWidth(8),
        ),
        Text("Filter", style: Theme.of(context).textTheme.headline6),
        const Spacer(),
        InkWell(
            onTap: press,
            child:
                Text(rightText, style: Theme.of(context).textTheme.headline6))
      ],
    );
  }
}
