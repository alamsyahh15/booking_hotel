import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final Color primaryColor = Color(0xFF0E7EFA);
final Color greyColor = Color(0xFFF6F6F6);
final Color scaffoldColor = Color(0xFFC4C4C4);
final Color freezedColor = Colors.grey.shade200.withOpacity(0.5);
late GlobalKey<NavigatorState> materialKey = GlobalKey<NavigatorState>();

double widthScreen = MediaQuery.of(materialKey.currentContext!).size.width;
double heightScreen = MediaQuery.of(materialKey.currentContext!).size.height;

extension NavigateControl on BuildContext {
  goTo(Widget widget) =>
      Navigator.push(this, MaterialPageRoute(builder: (context) => widget));
  back() => Navigator.pop(this);
}
