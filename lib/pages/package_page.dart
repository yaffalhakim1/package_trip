import 'package:flutter/material.dart';
import 'package:package_trip/pages/select_hotels.dart';

import 'package:package_trip/theme.dart';

class PackagePage extends StatefulWidget {
  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget optionPlan(int index, String title, String desc) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: 315,
          height: 81,
          decoration: BoxDecoration(
            color: Color(0xff252836),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
                color: selectedIndex == index ? orangeColor : whiteColor),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 18, left: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: priceText,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      desc,
                      style: priceDescText,
                    )
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: selectedIndex == index
                    ? Image.asset(
                        'assets/cheked.png',
                        width: 25,
                      )
                    : Container(),
              )
            ],
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
                      MaterialPageRoute(builder: (context) => SelectHotel()));
                },
                child: Text(
                  'Continue to Hotels',
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
            children: [
              Padding(
                padding: EdgeInsets.only(left: 30, top: 30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 50,
                      height: 50,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Trip',
                      style: titleText,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Whom You are Planning \nTo Travel With?',
                style: titleText.copyWith(letterSpacing: 0.1),
              ),
              SizedBox(
                height: 30,
              ),
              optionPlan(
                  0, 'Solo Trip', 'Suitable for you need a calm situation'),
              SizedBox(
                height: 20,
              ),
              optionPlan(1, 'Family Trip', 'Suitable for Make Perfect Memory'),
              SizedBox(
                height: 20,
              ),
              optionPlan(2, 'Couples Trip',
                  'Suitable for spending time with loved ones'),
              SizedBox(
                height: 20,
              ),
              optionPlan(3, 'Company Trip',
                  'Suitable for refreshing your office mind'),
              SizedBox(
                height: 131,
              ),
              buttonNext(),
            ],
          ),
        ),
      ),
    );
  }
}
