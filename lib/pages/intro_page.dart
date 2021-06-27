import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';
import 'package:hotel_booking_app/components/custom_button.dart';
import 'package:hotel_booking_app/pages/dashboard_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/intro_img.png',
              width: widthScreen,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              "LET'S GO HOTEL",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Text(
              "find and enjoy many of the best hotels in \nyour nearest area",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: widthScreen * 0.25),
              child: CustomButton(
                child: Text("Explore Now"),
                onPressed: () {
                  context.goTo(DashboardPage());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
