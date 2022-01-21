import 'package:flutter/material.dart';
import 'package:hotel_booking/screens/hotel_screen/hotel_screen.dart';
import 'package:hotel_booking/screens/home_search_screen/components/small_hotel_card.dart';

class HotelStarRow extends StatelessWidget {
  const HotelStarRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmallHotelCard(press: () {
      Navigator.pushNamed(context,"HotelScreen");
        },
          image: "assets/images/image2.png",
          hotelName: "Beach Resort Lux",
          hotelStar: "4.5",
        ),
        SmallHotelCard(press: () {},
          image: "assets/images/image1.png",
          hotelName: "Ocean View Hotel",
          hotelStar: "4.8",
        ),
      ],
    );
  }
}
