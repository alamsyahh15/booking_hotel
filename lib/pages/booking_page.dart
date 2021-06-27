import 'package:flutter/material.dart';
import 'package:hotel_booking_app/components/constant.dart';
import 'package:hotel_booking_app/components/custom_button.dart';
import 'package:hotel_booking_app/components/custom_icon_button.dart';

List<String> listItemCat = [
  "assets/item_cat1.png",
  "assets/item_cat2.png",
  "assets/item_cat3.png",
  "assets/item_cat4.png",
];

class BookingPage extends StatelessWidget {
  BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _BodyBooking(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: widthScreen * 0.20, vertical: 24),
              child: CustomButton(
                height: 50,
                child: Text("Book Now"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BodyBooking extends StatelessWidget {
  const _BodyBooking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset("assets/detail_img.png"),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: widthScreen * 0.1,
                      vertical: 16,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => context.back(),
                          child: CircleAvatar(
                            backgroundColor: freezedColor,
                            child: Icon(
                              Icons.arrow_back_ios_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: freezedColor,
                          child: Icon(
                            Icons.favorite,
                            color: Colors.pink,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 100,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: listItemCat.length,
                    padding: EdgeInsets.all(16),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: index == (listItemCat.length - 1)
                            ? Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(listItemCat[index]),
                                  Container(
                                    width: 67,
                                    height: 67,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.black54.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: Text(
                                      "+26\nMore",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Image.asset(listItemCat[index]),
                      );
                    }),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Green Otelo Hotel",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Text("5.0")
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: Colors.pink,
                          size: 20,
                        ),
                        Text("Selegon")
                      ],
                    ),
                    Text(
                      "\$99.00",
                      style: TextStyle(
                        fontSize: 16,
                        color: primaryColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIconButton(
                      icon: Icons.wifi,
                      child: Text(
                        "WiFi",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                    CustomIconButton(
                      icon: Icons.restaurant,
                      child: Text(
                        "Cafe",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                    CustomIconButton(
                      icon: Icons.pool_rounded,
                      child: Text(
                        "Swimp",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                    CustomIconButton(
                      icon: Icons.local_parking_rounded,
                      child: Text(
                        "Parking",
                        style: TextStyle(color: Colors.grey),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
