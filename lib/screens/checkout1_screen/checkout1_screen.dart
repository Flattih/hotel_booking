import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hotel_booking/core_components/custom_appbar.dart';
import 'package:hotel_booking/core_components/default_button.dart';
import 'package:hotel_booking/core_components/default_input_field.dart';
import 'package:hotel_booking/core_components/stepper_circle.dart';
import 'package:hotel_booking/core_components/stepper_divider.dart';
import 'package:hotel_booking/screens/checkout2_screen/chechkout2_screen.dart';

class Checkout1Screen extends StatelessWidget {
  const Checkout1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          text: "Reservation",
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(ScreenUtil().setHeight(20)),
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StepperCircle(
                      isOrange: true,
                      step: "1",
                    ),
                    StepperDivider(),
                    StepperCircle(
                      step: "2",
                    ),
                    StepperDivider(),
                    StepperCircle(
                      step: "3",
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(52),
                ),
                NormalInputField(
                  data: Theme.of(context),
                  text: "First Name",
                ),
                const SizedBox(height: 18),
                NormalInputField(
                  data: Theme.of(context),
                  text: "Last Name",
                ),
                const SizedBox(height: 18),
                NormalInputField(
                  data: Theme.of(context),
                  text: "Email Address",
                ),
                const SizedBox(height: 18),
                NormalInputField(
                  data: Theme.of(context),
                  text: "Address",
                ),
                const SizedBox(height: 18),
                NormalInputField(
                  data: Theme.of(context),
                  text: "Post Code",
                ),
                const SizedBox(height: 18),
                NormalInputField(
                  data: Theme.of(context),
                  text: "Country",
                ),
                const SizedBox(height: 18),
                NormalInputField(
                  data: Theme.of(context),
                  text: "Mobile Phone",
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(65),
                ),
                DefaultButton(
                  text: "Go to Payment",
                  press: () {


                    Navigator.pushNamed(context,"Checkout2");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
