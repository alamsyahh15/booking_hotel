import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget child;
  final IconData icon;
  final Function() onPressed;
  const CustomIconButton(
      {Key? key,
      required this.child,
      required this.icon,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        child: Column(
          children: [
            Icon(icon, color: Colors.grey),
            child,
          ],
        ),
      ),
    );
  }
}
