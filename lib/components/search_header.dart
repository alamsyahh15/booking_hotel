import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text("Location", style: TextStyle(fontSize: 12)),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Colors.pink,
                      size: 15,
                    ),
                    Text(
                      "Tangseul",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 15,
                    )
                  ],
                ),
              ],
            ),
            Image.asset(
              "assets/avatar.png",
              width: 50,
              height: 50,
            )
          ],
        ),
        Container(
          width: widthScreen,
          height: 50,
          margin: EdgeInsets.symmetric(vertical: 24),
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.35),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            children: [
              Icon(Icons.search, size: 25, color: Colors.grey),
              Text("Search...", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
      ],
    );
  }
}
