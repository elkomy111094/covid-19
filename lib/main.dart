import 'package:covid_19/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/info_screen.dart';

void main() {
  runApp(Covid19());
}

class Covid19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Covid 19",
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: "Pop",
        textTheme: TextTheme(
            bodyText1: TextStyle(
          color: kBodyTextColor,
        )),
      ),
      debugShowCheckedModeBanner: false,
      home: InfoScreen(),
    );
  }
}
