import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';
import 'package:hotel_booking_app/pages/booking_page.dart';

class ListPopularVertical extends StatelessWidget {
  const ListPopularVertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular Hotels",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Text("See all")
          ],
        ),
        SizedBox(height: 24),
        ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 5,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.asset('assets/item_list.png'),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 15),
                      Text("5.0", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Text(
                    "\$99.00",
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              title: Text("Pink Otelo Hotel",
                  style: TextStyle(fontWeight: FontWeight.w700)),
              subtitle: Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.pink, size: 15),
                  Text("Banten"),
                ],
              ),
              onTap: () {
                context.goTo(BookingPage());
              },
            );
          },
        ),
      ],
    );
  }
}
