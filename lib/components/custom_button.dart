import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final double? height;
  final double? width;
  final Function() onPressed;
  const CustomButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.height,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? widthScreen,
      height: height ?? 45,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ButtonStyle(
            textStyle:
                MaterialStateProperty.all(TextStyle(color: Colors.white)),
            backgroundColor: MaterialStateProperty.all(primaryColor),
            elevation: MaterialStateProperty.all(5),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50)))),
      ),
    );
  }
}
