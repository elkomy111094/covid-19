import 'package:flutter/material.dart';

import '../constants.dart';

class PrevAdvice extends StatelessWidget {
  final String title, subTitle;

  PrevAdvice({required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90.0),
                  child: Card(
                    elevation: 10,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Text(
                                  title,
                                  style: kTitleTextStyle,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  flex: 5,
                                  child: Text(
                                    subTitle,
                                    style: kSubTextStyle,
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -0,
                  left: -15,
                  child: Container(
                    height: 120,
                    width: 120,
                    child: Image.asset(
                      "assets/images/doc.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
