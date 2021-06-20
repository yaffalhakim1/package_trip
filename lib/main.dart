import 'package:flutter/material.dart';

import 'package:package_trip/pages/package_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PackagePage(),
    );
  }
}
