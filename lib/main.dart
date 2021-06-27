import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotel_booking_app/components/constant.dart';
import 'package:hotel_booking_app/pages/intro_page.dart';
import 'package:hotel_booking_app/components/constant.dart' as App;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: App.materialKey,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
        ),
        primarySwatch: Colors.blue,
        primaryColor: App.primaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
      ),
      home: IntroPage(),
    );
  }
}
