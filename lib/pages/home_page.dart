import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';
import 'package:hotel_booking_app/components/list_popular_horizontal.dart';
import 'package:hotel_booking_app/components/list_popular_vertical.dart';
import 'package:hotel_booking_app/components/search_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SearchHeader(),
                ListPopularHorizontal(),
                ListPopularVertical(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
