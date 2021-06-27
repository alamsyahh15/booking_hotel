import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';
import 'package:hotel_booking_app/pages/booking_page.dart';

class ListPopularHorizontal extends StatelessWidget {
  const ListPopularHorizontal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
        Container(
          height: 400,
          child: ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  context.goTo(BookingPage());
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    elevation: 5,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    borderOnForeground: true,
                    child: Container(
                      width: 240,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        topRight: Radius.circular(8),
                      )),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Image.asset(
                                "assets/item_slider.png",
                                width: widthScreen,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                right: 8,
                                top: 8,
                                child: CircleAvatar(
                                  backgroundColor: freezedColor,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.pink,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Green Otelo Hotels",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.location_on_rounded,
                                            color: Colors.pink),
                                        Text("Selegon"),
                                      ],
                                    ),
                                    Text("\$99.00",
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                        ))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
