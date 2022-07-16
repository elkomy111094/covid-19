import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import 'myClipper.dart';

class MyHeader extends StatelessWidget {
  final String image;
  final String text;
  final Widget navTo;

  MyHeader({required this.image, required this.text, required this.navTo});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(top: 50, left: 40, right: 20),
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF3383CD),
                Color(0xFF11249F),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (context) {
                    return navTo;
                  }));
                },
                child: Container(
                  height: 40,
                  width: 40,
                  child: Image.asset(
                    "assets/icons/menu.png",
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  SvgPicture.asset(
                    image,
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.fitWidth,
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        text,
                        style: kHeadingTextStyle.copyWith(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
