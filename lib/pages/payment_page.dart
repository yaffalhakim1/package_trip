import 'package:flutter/material.dart';
import 'package:package_trip/theme.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget buttonNext() {
      return Container(
        height: 55,
        width: 315,
        decoration: BoxDecoration(
          color: Color(0xff35A3AA),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Continue to Checkout',
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
                child: Row(
                  children: [
                    Image.asset(
                      'assets/select_payment.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Payment',
                      style: titleText,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Choose the card you \nwant to use',
                  style: titleText.copyWith(letterSpacing: 0.1),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/card_selected.png',
                        width: 300,
                        height: 200,
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'assets/unselected_card.png',
                        width: 300,
                        height: 200,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/add_card.png',
                      width: 30,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Add Another Card',
                      style: priceDescText.copyWith(letterSpacing: 0.1),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 87,
              ),
              Container(
                height: 255,
                width: 375,
                decoration: BoxDecoration(
                  color: Color(0xff252836),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(22),
                      topRight: Radius.circular(22)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        'Payment Summary',
                        style: priceText.copyWith(letterSpacing: 2),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Text(
                            'Family Trip',
                            style: priceDescText.copyWith(letterSpacing: 2),
                          ),
                          Spacer(),
                          Text(
                            'IDR 2.500.000',
                            style: priceDescText.copyWith(
                                color: whiteColor, letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Text(
                            'Hotel',
                            style: priceDescText.copyWith(letterSpacing: 2),
                          ),
                          Spacer(),
                          Text(
                            'IDR 500.000',
                            style: priceDescText.copyWith(
                                color: whiteColor, letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Text(
                            'Service Fee',
                            style: priceDescText.copyWith(letterSpacing: 2),
                          ),
                          Spacer(),
                          Text(
                            'IDR 50.000',
                            style: priceDescText.copyWith(
                                color: whiteColor, letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        children: [
                          Text(
                            'Hotel',
                            style: priceDescText.copyWith(letterSpacing: 2),
                          ),
                          Spacer(),
                          Text(
                            'IDR 2.550.000',
                            style: priceDescText.copyWith(
                                color: orangeColor, letterSpacing: 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Center(child: buttonNext()),
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
