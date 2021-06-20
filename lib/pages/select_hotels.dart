import 'package:flutter/material.dart';
import 'package:package_trip/pages/payment_page.dart';
import 'package:package_trip/theme.dart';

class SelectHotel extends StatefulWidget {
  @override
  _SelectHotelState createState() => _SelectHotelState();
}

class _SelectHotelState extends State<SelectHotel> {
  int selected = -1;

  @override
  Widget build(BuildContext context) {
    Widget Hotel(String price, String name, String location, int index) {
      return Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: Container(
            height: 215,
            width: 315,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/hotel_one.png',
                      width: 315,
                      height: 160,
                    ),
                    Image.asset(
                      'assets/container_hotel_price.png',
                      width: 164,
                      height: 41,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            price,
                            style: priceText.copyWith(
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                                letterSpacing: 0.2),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 12, top: 8),
                          child: selected == index
                              ? Image.asset(
                                  'assets/cheked.png',
                                  width: 25,
                                )
                              : Container(),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: priceText,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/location.png',
                              width: 8,
                              height: 11,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(
                              location,
                              style: priceDescText,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/rating.png',
                      width: 84,
                      height: 16,
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget buttonNext() {
      return Container(
        height: 55,
        width: 315,
        decoration: BoxDecoration(
          color: purpleColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentPage()));
                },
                child: Text(
                  'Continue to Payment',
                  style: titleText.copyWith(fontSize: 16),
                ),
              ),
              Image.asset(
                'assets/next.png',
                width: 14,
                height: 11,
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff1F1D2B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/select_hotel.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        'Hotels',
                        style: titleText,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Select the hotel you \nwant to stay in',
                  style: titleText.copyWith(letterSpacing: 0.1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Hotel(
                  'IDR 500k/night', 'Standout Hotel', 'Jakarta, Indonesia', 0),
              SizedBox(
                height: 30,
              ),
              Hotel('IDR 345k/night', 'Twins Hotel', 'Bandung, Indonesia', 1),
              SizedBox(
                height: 47,
              ),
              Center(child: buttonNext()),
              SizedBox(
                height: 47,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
