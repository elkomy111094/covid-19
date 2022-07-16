import 'package:covid_19/screens/info_screen.dart';
import 'package:covid_19/widgets/counter.dart';
import 'package:covid_19/widgets/myheader.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyHeader(
              image: "assets/icons/dr.svg",
              text: "Stay At Home",
              navTo: InfoScreen(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.blue),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton(
                          isExpanded: true,
                          value: "China",
                          underline: SizedBox(),
                          items: [
                            "China",
                            "Bangladesh",
                            "United States",
                            "Japan"
                          ]
                              .map<DropdownMenuItem<String>>((String value) =>
                                  DropdownMenuItem<String>(
                                      value: value, child: Text(value)))
                              .toList(),
                          onChanged: (val) {},
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: "Case Update\n", style: kTitleTextStyle),
                        TextSpan(
                            text: "Newest Update March 28",
                            style: TextStyle(color: kTextLightColor)),
                      ])),
                      Spacer(),
                      Text(
                        "See Details",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: kShadowColor,
                          offset: Offset(0, 4),
                          blurRadius: 30,
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Counter(
                          color: kInfectedColor,
                          title: "Infected",
                          number: 2468,
                        ),
                        Counter(
                          color: kDeathColor,
                          title: "Deaths",
                          number: 120,
                        ),
                        Counter(
                          color: kRecoverColor,
                          title: "Recovered",
                          number: 566,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Spread Of Virus",
                        style: kTitleTextStyle,
                      ),
                      Spacer(),
                      Text(
                        "See Details",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 178,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              color: kShadowColor,
                              blurRadius: 30),
                        ]),
                    child: Image.asset(
                      "assets/images/map.jpg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
