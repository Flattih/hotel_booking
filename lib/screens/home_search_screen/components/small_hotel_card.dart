import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/core_components/star.dart';

class SmallHotelCard extends StatelessWidget {
  final String image, hotelStar, hotelName;
  final VoidCallback press;

  const SmallHotelCard({
    Key? key,
    required this.image,
    required this.hotelStar,
    required this.hotelName, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 19),
      child: InkWell(onTap: press,
        child: SizedBox(
          width: ScreenUtil().setWidth(197),
          height: ScreenUtil().setHeight(117),
          child: Stack(
            clipBehavior: Clip.none,
            fit: StackFit.expand,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(ScreenUtil().radius(30)),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                right: 0,
                top: -17,
                child: StarCard(hotelStar: hotelStar),
              ),
              Positioned(
                bottom: ScreenUtil().setHeight(10),
                left: ScreenUtil().setHeight(12),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: hotelName,
                      ),
                    ],
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
